/// @author YellowAfterlife

#include "stdafx.h"
#include <Dbghelp.h>
#include <shellapi.h>

//
#pragma region https://github.com/andreasjhkarlsson/winapi-hooking-demo
BOOL ModifyImportTable(IMAGE_IMPORT_DESCRIPTOR* iid, void* target, void* replacement)
{
	IMAGE_THUNK_DATA* itd = (IMAGE_THUNK_DATA*)(((char*)GetModuleHandle(NULL)) + iid->FirstThunk);

	while (itd->u1.Function)
	{
		if (((void*)itd->u1.Function) == target)
		{
			// Temporary change access to memory area to READWRITE
			MEMORY_BASIC_INFORMATION mbi;
			VirtualQuery(itd, &mbi, sizeof(MEMORY_BASIC_INFORMATION));
			VirtualProtect(mbi.BaseAddress, mbi.RegionSize, PAGE_READWRITE, &mbi.Protect);

			// Replace entry!!
			*((void**)itd) = replacement;

			// Restore memory permissions
			VirtualProtect(mbi.BaseAddress, mbi.RegionSize, mbi.Protect, &mbi.Protect);

			return TRUE;
		}

		itd += 1;
	}
	return FALSE;
}

template<typename T>
static bool fakestrieq(const T* s1, const T* s2) {
	for (size_t i = 0;; i++) {
		auto c1 = s1[i], c2 = s2[i];
		if (c1 >= 'a' && c1 <= 'z') c1 -= 'a' - 'A';
		if (c2 >= 'a' && c2 <= 'z') c2 -= 'a' - 'A';
		if (c1 != c2) return false;
		if (c1 == 0) return true;
	}
}

BOOL InstallHook(LPCSTR module, LPCSTR function, void* hook, void** original)
{
	HMODULE process = GetModuleHandle(NULL);

	// Save original address to function
	*original = (void*)GetProcAddress(GetModuleHandleA(module), function);

	ULONG entrySize;

	IMAGE_IMPORT_DESCRIPTOR* iid = (IMAGE_IMPORT_DESCRIPTOR*)ImageDirectoryEntryToData(process, 1, IMAGE_DIRECTORY_ENTRY_IMPORT, &entrySize);

	// Search for module
	while (iid->Name)
	{
		const char* name = ((char*)process) + iid->Name;

		if (fakestrieq(name, module))
		{
			return ModifyImportTable(iid, *original, hook);
		}
		iid += 1;
	}

	return FALSE;
}
#pragma endregion

// for sanity
template<typename T>
BOOL InstallHookPlus(LPCSTR module, LPCSTR function, T proto, T hook, T* out_orig) {
	return InstallHook(module, function, hook, (void**)out_orig);
}

HWND GetActiveWindow_result = 0;
bool GetActiveWindow_isReady = false;
bool GetActiveWindow_useResult = false;
HWND(__stdcall* GetActiveWindow_base)();
HWND __stdcall GetActiveWindow_hook() {
	if (GetActiveWindow_useResult) {
		return GetActiveWindow_result;
	} else return GetActiveWindow_base();
}

dllg bool gamepad_force_focus(GAME_HWND hwnd, bool enable = true) {
	trace("bawk");
	GetActiveWindow_result = hwnd;
	GetActiveWindow_useResult = enable;
	if (!GetActiveWindow_isReady) {
		GetActiveWindow_isReady = InstallHookPlus("User32.dll", "GetActiveWindow", GetActiveWindow,
			GetActiveWindow_hook, &GetActiveWindow_base);
	}
	return GetActiveWindow_isReady;
}

void init() {
	GetActiveWindow_result = 0;
	GetActiveWindow_isReady = false;
	GetActiveWindow_useResult = false;
}

BOOL WINAPI DllMain(HINSTANCE hinstDLL, DWORD fdwReason, LPVOID lpReserved) {
	if (fdwReason == DLL_PROCESS_ATTACH) init();
	return TRUE;
}