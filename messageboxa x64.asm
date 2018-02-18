;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 1. Compile
; nasm.exe "messageboxa x64.asm" -f win64 -o "messageboxa x64.obj"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; 2. Link
; GoLink.exe "messageboxa x64.obj" "kernel32.dll" /dynamicbase /entry start /largeaddressaware /nxcompat /fo "messageboxa x64.exe"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

BITS 64

extern LoadLibraryA
extern GetProcAddress

section .text use64


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Main Thread                                                               ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Procedure loading and fast as possible window message dispatching.        ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


global start
export start
start:
;
sub rsp, 0x68
;
lea rcx, [rel kernel32_dll_0]
call LoadLibraryA
mov [rel LoadLibrary_kernel32_dll_], rax
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel SetUnhandledExceptionFilter_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_SetUnhandledExceptionFilter_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel RaiseException_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_RaiseException_], rax
;
lea rcx, [rel user32_dll_0]
call LoadLibraryA
mov [rel LoadLibrary_user32_dll_], rax
mov rcx, rax
lea rdx, [rel MessageBoxA_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_MessageBoxA_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel GetModuleHandleA_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_GetModuleHandleA_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel RegisterClassExW_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_RegisterClassExW_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel LoadCursorW_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_LoadCursorW_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel CreateWindowExW_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_CreateWindowExW_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel SetWindowLongPtrW_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowLongPtrW_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel SetWindowPos_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowPos_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel EnumDisplaySettingsW_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_EnumDisplaySettingsW_], rax
;
lea rcx, [rel Gdi32_dll_0]
call LoadLibraryA
mov [rel LoadLibrary_Gdi32_dll_], rax
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel CreatePolygonRgn_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_CreatePolygonRgn_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel SetWindowRgn_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowRgn_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel GetDC_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_GetDC_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel SelectObject_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_SelectObject_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel ReleaseDC_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_ReleaseDC_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel ShowWindow_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_ShowWindow_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel SetLayeredWindowAttributes_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_SetLayeredWindowAttributes_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel UpdateWindow_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_UpdateWindow_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel GetMessageW_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_GetMessageW_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel TranslateMessage_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_TranslateMessage_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel DispatchMessageW_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_DispatchMessageW_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel CreateThread_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_CreateThread_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel CreateDIBSection_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_CreateDIBSection_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel CreateFileMappingW_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_CreateFileMappingW_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel GdiFlush_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_GdiFlush_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel CreateCompatibleDC_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_CreateCompatibleDC_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel BitBlt_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_BitBlt_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel ValidateRect_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_ValidateRect_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel IsWindowEnabled_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_IsWindowEnabled_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel IsWindowVisible_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_IsWindowVisible_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel UpdateLayeredWindow_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_UpdateLayeredWindow_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel GdiAlphaBlend_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_GdiAlphaBlend_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel VirtualQuery_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_VirtualQuery_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel CreateEventW_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_CreateEventW_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel SetEvent_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_SetEvent_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel D3DKMTOpenAdapterFromHdc_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTOpenAdapterFromHdc_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel D3DKMTCreateDevice_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTCreateDevice_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel D3DKMTWaitForVerticalBlankEvent_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTWaitForVerticalBlankEvent_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel D3DKMTDestroyDevice_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTDestroyDevice_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel D3DKMTCloseAdapter_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTCloseAdapter_], rax
;
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel SetTimer_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_SetTimer_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel WaitForSingleObject_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_WaitForSingleObject_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel HeapCreate_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_HeapCreate_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel HeapAlloc_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_HeapAlloc_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel ExtCreateRegion_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_ExtCreateRegion_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel DeleteDC_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_DeleteDC_], rax
;
mov rcx, [rel LoadLibrary_Gdi32_dll_]
lea rdx, [rel DeleteObject_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_Gdi32_dll_DeleteObject_], rax
;
mov rcx, [rel LoadLibrary_kernel32_dll_]
lea rdx, [rel CloseHandle_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_kernel32_dll_CloseHandle_], rax
;
xor rcx, rcx
call [rel GetProcAddress_LoadLibrary_kernel32_dll_GetModuleHandleA_]
mov [rel GetModuleHandleA__], rax
;
mov dword [rel WNDCLASSEX_cbSize], 80
mov dword [rel WNDCLASSEX_style], 0x00000000
mov rcx, [rel LoadLibrary_user32_dll_]
lea rdx, [rel DefWindowProcW_0]
call GetProcAddress
mov [rel GetProcAddress_LoadLibrary_user32_dll_DefWindowProcW_], rax
mov qword [rel WNDCLASSEX_lpfnWndProc], rax
mov dword [rel WNDCLASSEX_cbClsExtra], 0
mov dword [rel WNDCLASSEX_cbWndExtra], 0
mov rax, [rel GetModuleHandleA__]
mov qword [rel WNDCLASSEX_hInstance], rax
mov qword [rel WNDCLASSEX_hIcon], 0
xor rcx, rcx
mov rdx, 32512
call [rel GetProcAddress_LoadLibrary_user32_dll_LoadCursorW_]
mov [rel LoadCursorW__], rax
mov qword [rel WNDCLASSEX_hCursor], rax
mov qword [rel WNDCLASSEX_hbrBackground], 0
mov qword [rel WNDCLASSEX_lpszMenuName], 0
lea rax, [rel _0]
mov qword [rel WNDCLASSEX_lpszClassName], rax
mov qword [rel WNDCLASSEX_hIconSm], 0
lea rcx, [rel WNDCLASSEX]
call [rel GetProcAddress_LoadLibrary_user32_dll_RegisterClassExW_]
mov [rel RegisterClassExW__], rax
;
mov rcx, 0x00000000000C0000
mov rdx, [rel RegisterClassExW__]
xor r8, r8
mov r9, 0x0000000000000000
mov qword [rsp+0x20], 0
mov qword [rsp+0x28], 0
mov eax, dword [rel MinimalDisplayWidth]
mov dword [rsp+0x30], eax
mov eax, dword [rel MinimalDisplayHeight]
mov dword [rsp+0x38], eax
mov qword [rsp+0x40], 0
mov qword [rsp+0x48], 0
mov rax, [rel GetModuleHandleA__]
mov qword [rsp+0x50], rax
mov qword [rsp+0x58], 0
call [rel GetProcAddress_LoadLibrary_user32_dll_CreateWindowExW_]
mov [rel CreateWindowExW__], rax
; Some flags do not take effect using CreateWindowExW, try better this time
mov rcx, [rel CreateWindowExW__]
mov rdx, -20
mov r8, 0x00000000000C0000
call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowLongPtrW_]
mov [rel SetWindowLongPtrW__], rax
mov rcx, [rel CreateWindowExW__]
mov rdx, -16
mov r8, 0x0000000000000000
call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowLongPtrW_]
mov [rel SetWindowLongPtrW__], rax
;
mov rcx, [rel CreateWindowExW__]
xor rdx, rdx
xor r8, r8
xor r9, r9
mov eax, dword [rel MinimalDisplayWidth]
mov dword [rsp+0x20], eax
mov eax, dword [rel MinimalDisplayHeight]
mov dword [rsp+0x28], eax
mov qword [rsp+0x30], 0x00000000000000A0
call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowPos_]
mov [rel SetWindowPos__], rax
;
xor rcx, rcx
mov edx, 48
lea r8, [rel RGNDATA_Empty]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_ExtCreateRegion_]
mov [rel HRGN], rax
;
mov rcx, [rel CreateWindowExW__]
mov rdx, [rel HRGN]
xor r8, r8
call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowRgn_]
mov [rel SetWindowRgn__], rax
;
mov rcx, [rel CreateWindowExW__]
mov rdx, 5
call [rel GetProcAddress_LoadLibrary_user32_dll_ShowWindow_]
mov [rel ShowWindow__], rax
;
mov rcx, [rel CreateWindowExW__]
mov rdx, 5
call [rel GetProcAddress_LoadLibrary_user32_dll_ShowWindow_]
mov [rel ShowWindow__], rax
;
mov rcx, [rel CreateWindowExW__]
call [rel GetProcAddress_LoadLibrary_user32_dll_UpdateWindow_]
mov [rel UpdateWindow__], rax
;
xor rcx, rcx
xor rdx, rdx
xor r8, r8
xor r9, r9
call [rel GetProcAddress_LoadLibrary_kernel32_dll_CreateEventW_]
mov [rel CreateEventW__], rax
;
mov rcx, [rel CreateEventW__]
call [rel GetProcAddress_LoadLibrary_kernel32_dll_SetEvent_]
mov [rel SetEvent__], rax
test eax, eax
jne SetEventIsWorking
lea rdx, [rel guimessage_Event]
lea r8, [rel guititle_Error]
jmp ShowMessageBoxWithCustomText
;
export SetEventIsWorking
SetEventIsWorking:
;
mov rcx, [rel CreateWindowExW__]
xor rdx, rdx
mov r8d, 10
xor r9, r9
call [rel GetProcAddress_LoadLibrary_user32_dll_SetTimer_]
mov [rel SetTimer__], rax
;
xor rcx, rcx
xor rdx, rdx
xor r8, r8
call [rel GetProcAddress_LoadLibrary_kernel32_dll_HeapCreate_]
mov [rel HeapCreate__], rax
;
mov rcx, [rel HeapCreate__]
xor rdx, rdx
mov r8, 16777216
call [rel GetProcAddress_LoadLibrary_kernel32_dll_HeapAlloc_]
mov [rel HeapAlloc__], rax
;
test rax, rax
jne MemoryLoaded
lea rdx, [rel guimessage_Memory]
lea r8, [rel guititle_Error]
jmp ShowMessageBoxWithCustomText
export MemoryLoaded
MemoryLoaded:
;
mov rcx, 0xffffffffffffffff
xor rdx, rdx
mov r8, 0x0000000000000004
xor r9, r9
mov qword [rsp+0x20], 16777216
mov qword [rsp+0x28], 0x0000000000000000
call [rel GetProcAddress_LoadLibrary_kernel32_dll_CreateFileMappingW_]
mov [rel CreateFileMappingW__], rax
;
mov rcx, [rel CreateWindowExW__]
call [rel GetProcAddress_LoadLibrary_user32_dll_GetDC_]
mov [rel GetDC__], rax
;
mov rcx, [rel GetDC__]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_CreateCompatibleDC_]
mov [rel CreateCompatibleDC__], rax
;
mov rcx, [rel CreateWindowExW__]
mov rdx, [rel GetDC__]
call [rel GetProcAddress_LoadLibrary_user32_dll_ReleaseDC_]
mov [rel ReleaseDC__], rax
;
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biSize], 40
mov eax, dword [rel MinimalDisplayWidth]
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biWidth], eax
mov eax, dword [rel MinimalDisplayHeight]
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biHeight], eax
mov word [rel BITMAPINFO_BITMAPINFOHEADER_biPlanes], 1
mov word [rel BITMAPINFO_BITMAPINFOHEADER_biBitCount], 32
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biCompression], 0
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biSizeImage], 0
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biXPelsPerMeter], 0
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biYPelsPerMeter], 0
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biClrUsed], 0
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biClrImportant], 0
mov dword [rel BITMAPINFO_RGBQUAD], 0
;
mov rcx, [rel CreateCompatibleDC__]
lea rdx, [rel BITMAPINFO]
xor r8, r8
lea r9, [rel CreateDIBSection_ppvBits]
mov rax, [rel CreateFileMappingW__]
mov qword [rsp+0x20], rax
mov qword [rsp+0x28], 0x0000000000000000
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_CreateDIBSection_]
mov [rel CreateDIBSection__], rax
;
mov dword [rel CurrentDisplayWidth], 0
mov dword [rel CurrentDisplayHeight], 0
;
cmp qword [rel CreateDIBSection_ppvBits], 0
jne DisplayMemoryLoaded
lea rdx, [rel guimessage_DisplayMemory]
lea r8, [rel guititle_Error]
jmp ShowMessageBoxWithCustomText
export DisplayMemoryLoaded
DisplayMemoryLoaded:
;
mov rcx, [rel CreateCompatibleDC__]
mov rdx, [rel CreateDIBSection__]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_SelectObject_]
mov [rel SelectObject__], rax
;
xor rax, rax
xor rcx, rcx
xor rdx, rdx
lea r8, [rel DCDrawer]
xor r9, r9
mov qword [rsp+0x20], 0
mov qword [rsp+0x28], 0
call [rel GetProcAddress_LoadLibrary_kernel32_dll_CreateThread_]
mov [rel CreateThread__], rax
;
mov qword [rel MessagesReceived], 0
export ProcessMessages
ProcessMessages:
lea rcx, [rel MSG]
mov rdx, qword [rel CreateWindowExW__]
xor r8, r8
xor r9, r9
call [rel GetProcAddress_LoadLibrary_user32_dll_GetMessageW_]
mov [rel GetMessageW__], rax
cmp eax, 0xffffffff
je ShowMessageBox
cmp eax, 0x00000000
je ShowMessageBox
;
cmp word [rel MSG_message], 0x0113
jne ProcessWindowMessage__WM_TIMER
mov rcx, [rel CreateEventW__]
call [rel GetProcAddress_LoadLibrary_kernel32_dll_SetEvent_]
mov [rel SetEvent__], rax
export ProcessWindowMessage__WM_TIMER
ProcessWindowMessage__WM_TIMER:
;
lea rcx, [rel MSG]
call [rel GetProcAddress_LoadLibrary_user32_dll_TranslateMessage_]
lea rcx, [rel MSG]
call [rel GetProcAddress_LoadLibrary_user32_dll_DispatchMessageW_]
inc qword [rel MessagesReceived]
jmp ProcessMessages
;
export ShowMessageBox
ShowMessageBox:
lea rdx, [rel guimessage]
lea r8, [rel guititle]
export ShowMessageBoxWithCustomText
ShowMessageBoxWithCustomText:
xor rcx, rcx
xor r9, r9
call [rel GetProcAddress_LoadLibrary_user32_dll_MessageBoxA_]
xor rax, rax
add rsp, 0x68
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; DCDrawer                                                                  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Window content drawing                                                    ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

export DCDrawer
DCDrawer:
sub rsp, 0x78
;
mov qword [rel FramesDrawn], 0
mov byte [rel FullScreenRegionIsSet], 0
mov byte [rel LayeredWindowIsReset], 0
export SetFrame
SetFrame:
;
mov rcx, [rel CreateWindowExW__]
call [rel GetProcAddress_LoadLibrary_user32_dll_GetDC_]
mov [rel GetDC__], rax
test rax, rax
je ShowMessageBox_DCDrawer
;
cmp qword [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTOpenAdapterFromHdc_], 0
je UseEventFrameSync
cmp qword [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTCreateDevice_], 0
je UseEventFrameSync
cmp qword [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTWaitForVerticalBlankEvent_], 0
je UseEventFrameSync
cmp qword [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTDestroyDevice_], 0
je UseEventFrameSync
cmp qword [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTCloseAdapter_], 0
je UseEventFrameSync
;
mov rax, [rel GetDC__]
mov [rel D3DKMT_OPENADAPTERFROMHDC_hDc], rax
lea rcx, [rel D3DKMT_OPENADAPTERFROMHDC]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTOpenAdapterFromHdc_]
mov [rel D3DKMTOpenAdapterFromHdc__], rax
test eax, eax
jne UseEventFrameSync
;
mov eax, dword [rel D3DKMT_OPENADAPTERFROMHDC_hAdapter]
mov dword [rel D3DKMT_CREATEDEVICE_hAdapter], eax
mov dword [rel D3DKMT_CREATEDEVICE_Flags], 2
lea rcx, [rel D3DKMT_CREATEDEVICE]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTCreateDevice_]
mov [rel D3DKMTCreateDevice__], rax
;
test eax, eax
je WaitForD3DKMTVerticalBlankEvent
mov dword [rel D3DKMT_CREATEDEVICE_hDevice], 0
export WaitForD3DKMTVerticalBlankEvent
WaitForD3DKMTVerticalBlankEvent:
;
mov eax, dword [rel D3DKMT_OPENADAPTERFROMHDC_hAdapter]
mov dword [rel D3DKMT_WAITFORVERTICALBLANKEVENT_hAdapter], eax
mov eax, dword [rel D3DKMT_CREATEDEVICE_hDevice]
mov dword [rel D3DKMT_WAITFORVERTICALBLANKEVENT_hDevice], eax
mov eax, dword [rel D3DKMT_OPENADAPTERFROMHDC_VidPnSourceId]
mov dword [rel D3DKMT_WAITFORVERTICALBLANKEVENT_VidPnSourceId], eax
lea rcx, [rel D3DKMT_WAITFORVERTICALBLANKEVENT]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTWaitForVerticalBlankEvent_]
mov [rel D3DKMTWaitForVerticalBlankEvent__], rax
;
cmp dword [rel D3DKMTCreateDevice__], 0
jne ReleaseD3DKMTAdapter
mov eax, dword [rel D3DKMT_CREATEDEVICE_hDevice]
mov dword [rel D3DKMT_DESTROYDEVICE_hDevice], eax
lea rcx, [rel D3DKMT_DESTROYDEVICE]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTDestroyDevice_]
mov [rel D3DKMTDestroyDevice__], rax
;
export ReleaseD3DKMTAdapter
ReleaseD3DKMTAdapter:
mov eax, dword [rel D3DKMT_OPENADAPTERFROMHDC_hAdapter]
mov dword [rel D3DKMT_CLOSEADAPTER_hAdapter], eax
lea rcx, [rel D3DKMT_CLOSEADAPTER]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTCloseAdapter_]
mov [rel D3DKMTCloseAdapter__], rax
;
cmp dword [rel D3DKMTWaitForVerticalBlankEvent__], 0
je FrameSyncComplete
;
export UseEventFrameSync
UseEventFrameSync:
mov rcx, [rel CreateEventW__]
mov rdx, 0xFFFFFFFF
call [rel GetProcAddress_LoadLibrary_kernel32_dll_WaitForSingleObject_]
mov [rel WaitForSingleObject__], rax
;
export FrameSyncComplete
FrameSyncComplete:
;
mov rcx, [rel CreateWindowExW__]
mov rdx, [rel GetDC__]
call [rel GetProcAddress_LoadLibrary_user32_dll_ReleaseDC_]
mov [rel ReleaseDC__], rax
test eax, eax
je ShowMessageBox_DCDrawer
;
xor rcx, rcx
mov edx, 0xffffffff
mov word [rel DEVMODEW_dmSize], 220
mov word [rel DEVMODEW_dmDriverExtra], 0
lea r8, [rel DEVMODEW]
call [rel GetProcAddress_LoadLibrary_user32_dll_EnumDisplaySettingsW_]
mov [rel EnumDisplaySettingsW__], rax
;
mov r10d, [rel DEVMODEW_dmPelsWidth]
mov r11d, [rel DEVMODEW_dmPelsHeight]
cmp [rel CurrentDisplayWidth], r10d
jne DesktopAdaptation_ResolutionChangeDetected
cmp [rel CurrentDisplayHeight], r11d
jne DesktopAdaptation_ResolutionChangeDetected
jmp DesktopAdaptationComplete
export DesktopAdaptation_ResolutionChangeDetected
DesktopAdaptation_ResolutionChangeDetected:
;
mov rcx, [rel CreateWindowExW__]
xor rdx, rdx
xor r8, r8
xor r9, r9
mov r10d, [rel DEVMODEW_dmPelsWidth]
mov r11d, [rel DEVMODEW_dmPelsHeight]
mov dword [rsp+0x20], r10d
mov dword [rsp+0x28], r11d
mov qword [rsp+0x30], 0x0000000000000040
call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowPos_]
mov [rel SetWindowPos__], rax
;
mov rcx, [rel CreateCompatibleDC__]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_DeleteDC_]
mov [rel DeleteDC__], rax
;
mov rcx, [rel CreateDIBSection__]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_DeleteObject_]
mov [rel DeleteObject__], rax
;
mov rcx, [rel CreateWindowExW__]
call [rel GetProcAddress_LoadLibrary_user32_dll_GetDC_]
mov [rel GetDC__], rax
;
mov rcx, [rel GetDC__]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_CreateCompatibleDC_]
mov [rel CreateCompatibleDC__], rax
;
mov rcx, [rel CreateWindowExW__]
mov rdx, [rel GetDC__]
call [rel GetProcAddress_LoadLibrary_user32_dll_ReleaseDC_]
mov [rel ReleaseDC__], rax
;
mov r10d, [rel DEVMODEW_dmPelsWidth]
mov r11d, [rel DEVMODEW_dmPelsHeight]
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biSize], 40
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biWidth], r10d
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biHeight], r11d
mov word [rel BITMAPINFO_BITMAPINFOHEADER_biPlanes], 1
mov word [rel BITMAPINFO_BITMAPINFOHEADER_biBitCount], 32
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biCompression], 0
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biSizeImage], 0
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biXPelsPerMeter], 0
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biYPelsPerMeter], 0
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biClrUsed], 0
mov dword [rel BITMAPINFO_BITMAPINFOHEADER_biClrImportant], 0
mov dword [rel BITMAPINFO_RGBQUAD], 0
;
mov rcx, [rel CreateCompatibleDC__]
lea rdx, [rel BITMAPINFO]
xor r8, r8
lea r9, [rel CreateDIBSection_ppvBits]
mov rax, [rel CreateFileMappingW__]
mov qword [rsp+0x20], rax
mov qword [rsp+0x28], 0x0000000000000000
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_CreateDIBSection_]
mov [rel CreateDIBSection__], rax
;
cmp qword [rel CreateDIBSection_ppvBits], 0
jne DisplayMemoryLoaded_DCDrawer
lea rdx, [rel guimessage_DisplayMemory]
lea r8, [rel guititle_Error]
jmp ShowMessageBoxWithCustomText_DCDrawer
export DisplayMemoryLoaded_DCDrawer
DisplayMemoryLoaded_DCDrawer:
;
mov rcx, [rel CreateDIBSection_ppvBits]
lea rdx, [rel MEMORY_BASIC_INFORMATION]
mov r8, 48
call [rel GetProcAddress_LoadLibrary_kernel32_dll_VirtualQuery_]
mov [rel VirtualQuery__], rax
;
mov rcx, [rel CreateCompatibleDC__]
mov rdx, [rel CreateDIBSection__]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_SelectObject_]
mov [rel SelectObject__], rax
;
mov r10d, [rel DEVMODEW_dmPelsWidth]
mov r11d, [rel DEVMODEW_dmPelsHeight]
mov dword [rel CurrentDisplayWidth], r10d
mov dword [rel CurrentDisplayHeight], r11d
export DesktopAdaptationComplete
DesktopAdaptationComplete:
;
mov r10d, dword [rel CurrentDisplayWidth]
mov r11d, dword [rel CurrentDisplayHeight]
mov rax, [rel FramesDrawn]
mov dword [rel FrameColour], 0
;0 - 12 0x1000 >> 12
;1 - 15 0x8000 >> 14
;2 - 18 0x40000 >> 16
;3 - 21 0x200000 >> 18
;4 - 0 0x1 << 4
;5 - 3 0x8 << 2
;6 - 6 0x40
;7 - 9 0x200 >> 2
;8 - 13 0x2000 >> 5
;9 - 16 0x10000 >> 7
;10 - 19 0x80000 >> 9
;11 - 22 0x400000 >> 11
;12 - 1 0x2 << 11
;13 - 4 0x10 << 9
;14 - 7 0x80 << 7
;15 - 10 0x400 << 5
;16 - 14 0x4000 << 2
;17 - 17 0x20000
;18 - 20 0x100000 >> 2
;19 - 23 0x800000 >> 4
;20 - 2 0x4 << 18
;21 - 5 0x20 << 16
;22 - 8 0x100 << 14
;23 - 11 0x800 << 12
mov edx, 0x1000
and edx, eax
shr edx, 12
or dword [rel FrameColour], edx
mov edx, 0x8000
and edx, eax
shr edx, 14
or dword [rel FrameColour], edx
mov edx, 0x40000
and edx, eax
shr edx, 16
or dword [rel FrameColour], edx
mov edx, 0x200000
and edx, eax
shr edx, 18
or dword [rel FrameColour], edx
mov edx, 0x1
and edx, eax
shl edx, 4
or dword [rel FrameColour], edx
mov edx, 0x8
and edx, eax
shl edx, 2
or dword [rel FrameColour], edx
mov edx, 0x40
and edx, eax
or dword [rel FrameColour], edx
mov edx, 0x200
and edx, eax
shr edx, 2
or dword [rel FrameColour], edx
mov edx, 0x2000
and edx, eax
shr edx, 5
or dword [rel FrameColour], edx
mov edx, 0x10000
and edx, eax
shr edx, 7
or dword [rel FrameColour], edx
mov edx, 0x80000
and edx, eax
shr edx, 9
or dword [rel FrameColour], edx
mov edx, 0x400000
and edx, eax
shr edx, 11
or dword [rel FrameColour], edx
mov edx, 0x2
and edx, eax
shl edx, 11
or dword [rel FrameColour], edx
mov edx, 0x10
and edx, eax
shl edx, 9
or dword [rel FrameColour], edx
mov edx, 0x80
and edx, eax
shl edx, 7
or dword [rel FrameColour], edx
mov edx, 0x400
and edx, eax
shl edx, 5
or dword [rel FrameColour], edx
mov edx, 0x4000
and edx, eax
shl edx, 2
or dword [rel FrameColour], edx
mov edx, 0x20000
and edx, eax
or dword [rel FrameColour], edx
mov edx, 0x100000
and edx, eax
shr edx, 2
or dword [rel FrameColour], edx
mov edx, 0x800000
and edx, eax
shr edx, 4
or dword [rel FrameColour], edx
mov edx, 0x4
and edx, eax
shl edx, 18
or dword [rel FrameColour], edx
mov edx, 0x20
and edx, eax
shl edx, 16
or dword [rel FrameColour], edx
mov edx, 0x100
and edx, eax
shl edx, 14
or dword [rel FrameColour], edx
mov edx, 0x800
and edx, eax
shl edx, 12
or dword [rel FrameColour], edx
;
xor rdx, rdx
mov rbx, r10
add rbx, r11
div rbx
;
; 0, 0 ---> 0, r11 ---> r10, r11
; r10, r11 ---> r10, 0 ---> 0, 0
cmp edx, r11d
ja VariableExtendsHeight
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x8], 0x00000000      ;0x8
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0xC], edx         ;0xC
mov r12d, r11d
sub r12d, edx
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x18], r10d       ;0x18
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x1C], r12d       ;0x1C
jmp VariableHeightWidthMoveComplete
export VariableExtendsHeight
VariableExtendsHeight:
mov r12d, edx
sub r12d, r11d
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x8], r12d            ;0x8
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0xC], r11d        ;0xC
mov r13d, edx
sub r13d, r11d
mov r14d, r10d
sub r14d, r13d
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x18], r14d       ;0x18
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x1C], 0x00000000 ;0x1C
export VariableHeightWidthMoveComplete
VariableHeightWidthMoveComplete:
;
; 0, r11 ---> r10, r11 ---> r10, 0
; r10, 0 ---> 0, 0 ---> 0, r11
cmp edx, r10d
ja VariableExtendsWidth
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x10], edx         ;0x10
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x14], r11d        ;0x14
mov r12d, r10d
sub r12d, edx
mov dword [rel CreatePolygonRgn_POINT_DCDrawer], r12d       ;0x0
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x4], 0x00000000 ;0x4
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x20], r12d
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x24], 0x00000000
jmp VariableWidthHeightMoveComplete
export VariableExtendsWidth
VariableExtendsWidth:
mov r12d, edx
sub r12d, r10d
mov r13d, r11d
sub r13d, r12d
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x10], r10d        ;0x10
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x14], r13d        ;0x14
mov r13d, edx
sub r13d, r10d
mov dword [rel CreatePolygonRgn_POINT_DCDrawer], 0x00000000 ;0x0
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x4], r13d       ;0x4
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x20], 0x00000000
mov dword [rel CreatePolygonRgn_POINT_DCDrawer+0x24], r13d
export VariableWidthHeightMoveComplete
VariableWidthHeightMoveComplete:
;
mov rbx, qword [rel HeapAlloc__]
mov dword [rbx], 0x20
mov dword [rbx+0x4], 1
mov dword [rbx+0x8], 0 ; Count of rectangles
mov dword [rbx+0xC], 0 ; Buffer size for rectangles
mov dword [rbx+0x10], 0 ; left
mov dword [rbx+0x14], 0 ; top
mov eax, dword [rel CurrentDisplayWidth]
mov dword [rbx+0x18], eax ; right
mov eax, dword [rel CurrentDisplayHeight]
mov dword [rbx+0x1C], eax ; bottom
;
xor rcx, rcx ; size
xor rsi, rsi ; current y
xor rdi, rdi ; '...'
xor r14, r14  ; x value
xor r15, r15
; 1 - found x in row
; 4 and 2 - line counter for polygon, current limit - 4 lines
; 8 - 0: process top line for pixel, 1: process bottom line
; 16 - 0: find lower x, 1: find higher x
;
export RegionCreater_RGNDATACreated
RegionCreater_RGNDATACreated:
mov rax, r15
and rax, 6
shr rax, 1
lea r12, [rel CreatePolygonRgn_POINT_DCDrawer]
;
mov r8d, dword [r12+8*rax+0x4] ; y1
mov r9d, dword [r12+8*rax+0xC] ; y2
mov r10d, dword [r12+8*rax]    ; x1
mov r11d, dword [r12+8*rax+0x8]; x2
cmp r8d, r9d
jl RegionCreater_VerticalSortComplete
je RegionCreater_LineInRangeCheckComplete
xchg r8d, r9d
xchg r10d, r11d
export RegionCreater_VerticalSortComplete
RegionCreater_VerticalSortComplete:
; r8d <= r12d <= r9d
mov edi, esi
test r15, 8
jz RegionCreater_PixelTopOrBottomLineResolved
inc edi
export RegionCreater_PixelTopOrBottomLineResolved
RegionCreater_PixelTopOrBottomLineResolved:
;
cmp r8d, edi
jg RegionCreater_LineInRangeCheckComplete
cmp edi, r9d
jg RegionCreater_LineInRangeCheckComplete
;
; x*(y2-y1) = x2*(y-y1) + x1*(y2-y)
mov eax, edi
sub eax, r8d
imul r11d
mov r12d, edx
mov r13d, eax
mov eax, r9d
sub eax, edi
imul r10d
add eax, r13d
adc edx, r12d
mov r12d, r9d
sub r12d, r8d
idiv r12d
; idiv op gives signed remainder at rdx
cmp edx, 0
jge RegionCreater_LoweringCorrectionWithRemainderComplete
test r15, 16
jne RegionCreater_LoweringCorrectionWithRemainderComplete
dec eax
jmp RegionCreater_HigheringCorrectionWithRemainderComplete
export RegionCreater_LoweringCorrectionWithRemainderComplete
RegionCreater_LoweringCorrectionWithRemainderComplete:
;
je RegionCreater_HigheringCorrectionWithRemainderComplete
test r15, 16
je RegionCreater_HigheringCorrectionWithRemainderComplete
inc eax
export RegionCreater_HigheringCorrectionWithRemainderComplete
RegionCreater_HigheringCorrectionWithRemainderComplete:
;
test r15, 1
je RegionCreater_FoundX
cmp eax, r14d
jge RegionCreater_NeedLowerXChecked
test r15, 16
je RegionCreater_FoundX
jmp RegionCreater_XIsSet
export RegionCreater_NeedLowerXChecked
RegionCreater_NeedLowerXChecked:
je RegionCreater_XIsSet
test r15, 16
je RegionCreater_XIsSet
;
export RegionCreater_FoundX
RegionCreater_FoundX:
mov r14d, eax
export RegionCreater_XIsSet
RegionCreater_XIsSet:
or r15, 1
;
export RegionCreater_LineInRangeCheckComplete
RegionCreater_LineInRangeCheckComplete:
;
mov rax, r15
and rax, 6
shr rax, 1
inc rax
and rax, 3
shl rax, 1
and r15, 0xFFFFFFFFFFFFFFF9
or r15, rax
test rax, rax
jne RegionCreater_RGNDATACreated
;
test r15, 8 ;top/bottom
jnz RegionCreater_TopBottomProcessed
xor r15, 8
jmp RegionCreater_RGNDATACreated
export RegionCreater_TopBottomProcessed
RegionCreater_TopBottomProcessed:
xor r15, 8
;
test r15, 1
jz RegionCreater_RowProcessed
test r15, 16
jnz RegionCreater_LowXSet
mov dword [rbx+rcx+0x20], r14d ;left
xor r15, 16
jmp RegionCreater_RGNDATACreated
export RegionCreater_LowXSet
RegionCreater_LowXSet:
;
xor r15, 16
mov dword [rbx+rcx+0x24], esi ;top
mov dword [rbx+rcx+0x28], r14d ;right
mov eax, esi
inc eax
mov dword [rbx+rcx+0x2C], eax ;bottom
add ecx, 0x10
mov dword [rbx+0xC], ecx ; Buffer size for rectangles
shr ecx, 4
mov dword [rbx+0x8], ecx ; Count of rectangles
shl ecx, 4
xor r14, r14
xor r15, 1
;
export RegionCreater_RowProcessed
RegionCreater_RowProcessed:
inc esi
cmp esi, dword [rel DEVMODEW_dmPelsHeight]
jne RegionCreater_RGNDATACreated
;
xor eax, eax
mov eax, dword [rel CurrentDisplayWidth]
xor edx, edx
mov edx, dword [rel CurrentDisplayHeight]
mul rdx
test rdx, rdx
jnz DisplayMemoryFailure
mov rbx, rax
mov rax, 0xC000000000000000
test rbx, rax
jnz DisplayMemoryFailure
mov rax, rbx
shl rax, 2
cmp rax, [rel MEMORY_BASIC_INFORMATION_RegionSize]
jbe DisplayMemoryVerifiedSize
export DisplayMemoryFailure
DisplayMemoryFailure:
lea rdx, [rel guimessage_DisplayMemoryInconsistentSize]
lea r8, [rel guititle_Error]
jmp ShowMessageBoxWithCustomText_DCDrawer
;
export DisplayMemoryVerifiedSize
DisplayMemoryVerifiedSize:
mov r8, qword [rel HeapAlloc__]
mov rbx, [rel CreateDIBSection_ppvBits]
mov r9d, dword [r8 + 0xC]
lea r9, [r8 + r9 + 0x20]
lea r8, [r8 + 0x20]
cmp r9, r8
je Renderer_BitmapDrawn
export Renderer_NewRectangleReady
Renderer_NewRectangleReady:
;
mov eax, dword [r8+0x4]
cmp eax, 0
jl Renderer_LineDrawn
cmp eax, dword [rel CurrentDisplayHeight]
jge Renderer_LineDrawn
mov ecx, dword [rel CurrentDisplayHeight]
sub ecx, eax
mov eax, ecx
dec eax
mov edx, dword [rel CurrentDisplayWidth]
mul edx
shl eax, 2
lea rdi, [rbx+rax]
mov r10d, dword [r8]
mov r11d, dword [r8+0x8]
cmp r10d, 0
jge Renderer_LowerXInLowerLimit
mov r10d, 0
export Renderer_LowerXInLowerLimit
Renderer_LowerXInLowerLimit:
cmp r10d, dword [rel CurrentDisplayWidth]
jle Renderer_LowerXInHigherLimit
mov r10d, dword [rel CurrentDisplayWidth]
export Renderer_LowerXInHigherLimit
Renderer_LowerXInHigherLimit:
cmp r11d, 0
jge Renderer_HigherXInLowerLimit
mov r11d, 0
export Renderer_HigherXInLowerLimit
Renderer_HigherXInLowerLimit:
cmp r11d, dword [rel CurrentDisplayWidth]
jle Renderer_HigherXInHigherLimit
mov r11d, dword [rel CurrentDisplayWidth]
export Renderer_HigherXInHigherLimit
Renderer_HigherXInHigherLimit:
cmp r11d, r10d
jnb Renderer_XBoundariesAreOrdered
mov r11d, r10d
export Renderer_XBoundariesAreOrdered
Renderer_XBoundariesAreOrdered:
mov ecx, r10d
mov eax, 0xFF000000
or eax, dword [rel FrameColour]
rep stosd
mov ecx, r11d
sub ecx, r10d
mov eax, 0x00000000
; This modifies screen color outside window on 32 bit color
;or eax, dword [rel FrameColour]
rep stosd
mov ecx, dword [rel CurrentDisplayWidth]
sub ecx, r11d
mov eax, 0xFF000000
or eax, dword [rel FrameColour]
rep stosd
export Renderer_LineDrawn
Renderer_LineDrawn:
add r8, 0x10
cmp r9, r8
jne Renderer_NewRectangleReady
export Renderer_BitmapDrawn
Renderer_BitmapDrawn:
;
xor r15, r15
; 2 and 1 - line counter for polygon, current limit - 4 lines
; 4 - 0: scan vertical edge of pixel; 1: horizontal edge
; 8 - 0: line crosses parallel edges of pixel; 1: perpendicular edges
; 16 - 0: x increases; 1: x decreases
; 32 - 0: y increases; 1: y decreases
; 64 - 0: value matches integral over x axis; 1: one minus integral
export SemitransparentEdge_ScanLine
SemitransparentEdge_ScanLine:
mov rax, r15
and rax, 3
lea r12, [rel CreatePolygonRgn_POINT_DCDrawer]
mov r8d, dword [r12+8*rax+0x4] ; y1
mov r9d, dword [r12+8*rax+0xC] ; y2
mov r10d, dword [r12+8*rax]    ; x1
mov r11d, dword [r12+8*rax+0x8]; x2
mov esi, r10d ; current x
mov edi, r8d ; current y
xor r13d, r13d ; rx
xor r14d, r14d ; ry
;
cmp r11d, r10d
je SemitransparentEdge_LineDrawn
jg SemitransparentEdge_XDirectionSet
or r15, 16
export SemitransparentEdge_XDirectionSet
SemitransparentEdge_XDirectionSet:
;
cmp r9d, r8d
je SemitransparentEdge_LineDrawn
jg SemitransparentEdge_YDirectionSet
or r15, 32
export SemitransparentEdge_YDirectionSet
SemitransparentEdge_YDirectionSet:
;
mov rax, r15
inc rax
and rax, 3
lea r12, [rel CreatePolygonRgn_POINT_DCDrawer]
mov eax, dword [r12+8*rax+0x8] ; xi
sub eax, r10d
mov rdx, r15
inc rdx
and rdx, 3
mov edx, dword [r12+8*rdx+0xC] ; yi
neg edx
add edx, r9d
imul edx
mov ebx, eax
mov ecx, edx
mov rax, r15
inc rax
and rax, 3
mov eax, dword [r12+8*rax+0x8] ; xi
sub eax, r11d
mov rdx, r15
inc rdx
and rdx, 3
mov edx, dword [r12+8*rdx+0xC] ; yi
sub edx, r8d
imul edx
add eax, ebx
adc edx, ecx
cmp edx, 0
jge SemitransparentEdge_IntegralDirectionSet
or r15, 64
export SemitransparentEdge_IntegralDirectionSet
SemitransparentEdge_IntegralDirectionSet:
;
mov edx, r9d
sub edx, r8d
test r15, 32
je SemitransparentEdge_YDirectionCorrectionCompleteAt2xy
neg edx
export SemitransparentEdge_YDirectionCorrectionCompleteAt2xy
SemitransparentEdge_YDirectionCorrectionCompleteAt2xy:

mov eax, r11d
sub eax, r10d
test r15, 16
je SemitransparentEdge_XDirectionCorrectionCompleteAt2xy
neg eax
export SemitransparentEdge_XDirectionCorrectionCompleteAt2xy
SemitransparentEdge_XDirectionCorrectionCompleteAt2xy:
;
mul edx
rol rdx, 32
or rdx, rax
shl rdx, 1
mov rcx, rdx ;2xy
;
export SemitransparentEdge_ScanPixel
SemitransparentEdge_ScanPixel:
test r15, 4
jne SemitransparentEdge_VerticalEdgeScanComplete
mov eax, r9d
sub eax, r8d
;
test r15, 32
je SemitransparentEdge_YDirectionCorrectionCompleteAtVerticalEdge
neg eax
export SemitransparentEdge_YDirectionCorrectionCompleteAtVerticalEdge
SemitransparentEdge_YDirectionCorrectionCompleteAtVerticalEdge:
;
add eax, r14d
mov ebx, r11d
sub ebx, r10d
;
test r15, 16
je SemitransparentEdge_XDirectionCorrectionCompleteAtVerticalEdge
neg ebx
export SemitransparentEdge_XDirectionCorrectionCompleteAtVerticalEdge
SemitransparentEdge_XDirectionCorrectionCompleteAtVerticalEdge:
;
cmp eax, ebx
jle SemitransparentEdge_VerifyVerticalEdgeDirectionComplete
xor r15, 4
or r15, 8
jmp SemitransparentEdge_ScanPixel
export SemitransparentEdge_VerifyVerticalEdgeDirectionComplete
SemitransparentEdge_VerifyVerticalEdgeDirectionComplete:
;
test r15, 8
jne SemitransparentEdge_ParalelCalculationComplete
add eax, r14d
mov ebx, eax
shl eax, 8
sub eax, ebx
mov ebx, r11d
sub ebx, r10d
;
test r15, 16
je SemitransparentEdge_XDirectionCorrectionCompleteAtVerticalEdgeDividend
neg ebx
export SemitransparentEdge_XDirectionCorrectionCompleteAtVerticalEdgeDividend
SemitransparentEdge_XDirectionCorrectionCompleteAtVerticalEdgeDividend:
;
shl ebx, 1
xor edx, edx
div ebx
jmp SemitransparentEdge_PerpendicularCalculationComplete
export SemitransparentEdge_VerticalEdgeScanComplete
SemitransparentEdge_VerticalEdgeScanComplete:
;
mov eax, r11d
sub eax, r10d
;
test r15, 16
je SemitransparentEdge_XDirectionCorrectionCompleteAtHorizontalEdge
neg eax
export SemitransparentEdge_XDirectionCorrectionCompleteAtHorizontalEdge
SemitransparentEdge_XDirectionCorrectionCompleteAtHorizontalEdge:
;
add eax, r13d
mov ebx, r9d
sub ebx, r8d
;
test r15, 32
je SemitransparentEdge_YDirectionCorrectionCompleteAtHorizontalEdge
neg ebx
export SemitransparentEdge_YDirectionCorrectionCompleteAtHorizontalEdge
SemitransparentEdge_YDirectionCorrectionCompleteAtHorizontalEdge:
;
cmp eax, ebx
jle SemitransparentEdge_VerifyHorizontalEdgeDirectionComplete
xor r15, 4
or r15, 8
jmp SemitransparentEdge_ScanPixel
export SemitransparentEdge_VerifyHorizontalEdgeDirectionComplete
SemitransparentEdge_VerifyHorizontalEdgeDirectionComplete:
;
test r15, 8
jne SemitransparentEdge_ParalelCalculationComplete
add eax, r13d
mov ebx, eax
shl eax, 8
sub eax, ebx
mov ebx, r9d
sub ebx, r8d
;
test r15, 32
je SemitransparentEdge_YDirectionCorrectionCompleteAtHorizontalEdgeDividend
neg ebx
export SemitransparentEdge_YDirectionCorrectionCompleteAtHorizontalEdgeDividend
SemitransparentEdge_YDirectionCorrectionCompleteAtHorizontalEdgeDividend:
;
shl ebx, 1
xor edx, edx
div ebx
jmp SemitransparentEdge_PerpendicularCalculationComplete
export SemitransparentEdge_ParalelCalculationComplete
SemitransparentEdge_ParalelCalculationComplete:
;
mul eax
rol rdx, 32
or rax, rdx
mov rbx, rax
shl rax, 8
sub rax, rbx
mov rbx, rcx
xor rdx, rdx
div rbx
export SemitransparentEdge_PerpendicularCalculationComplete
SemitransparentEdge_PerpendicularCalculationComplete:
;
test r15b, 116
jnp SemitransparentEdge_IntegralDirectionCorrectionDone
neg eax
add eax, 0xFF
cmp rdx, 0
je SemitransparentEdge_IntegralDirectionCorrectionDone
dec eax
neg rdx
add rdx, rbx
export SemitransparentEdge_IntegralDirectionCorrectionDone
SemitransparentEdge_IntegralDirectionCorrectionDone:
;
shr rbx, 1
cmp rdx, rbx
jb SemitransparentEdge_RoundingByRemaiderComplete
inc eax
export SemitransparentEdge_RoundingByRemaiderComplete
SemitransparentEdge_RoundingByRemaiderComplete:
;
test r15, 16
je SemitransparentEdge_BackwardXDirectionRangeCheckComplete
cmp esi, 0
jle SemitransparentEdge_PixelDrawn
cmp esi, dword [rel CurrentDisplayWidth]
jg SemitransparentEdge_PixelDrawn
jmp SemitransparentEdge_FowardXDirectionRangeCheckComplete
export SemitransparentEdge_BackwardXDirectionRangeCheckComplete
SemitransparentEdge_BackwardXDirectionRangeCheckComplete:
;
cmp esi, 0
jl SemitransparentEdge_PixelDrawn
cmp esi, dword [rel CurrentDisplayWidth]
jge SemitransparentEdge_PixelDrawn
export SemitransparentEdge_FowardXDirectionRangeCheckComplete
SemitransparentEdge_FowardXDirectionRangeCheckComplete:
;
test r15, 32
je SemitransparentEdge_BackwardYDirectionRangeCheckComplete
cmp edi, 0
jle SemitransparentEdge_PixelDrawn
cmp edi, dword [rel CurrentDisplayHeight]
jg SemitransparentEdge_PixelDrawn
jmp SemitransparentEdge_FowardYDirectionRangeCheckComplete
export SemitransparentEdge_BackwardYDirectionRangeCheckComplete
SemitransparentEdge_BackwardYDirectionRangeCheckComplete:
;
cmp edi, 0
jl SemitransparentEdge_PixelDrawn
cmp edi, dword [rel CurrentDisplayHeight]
jge SemitransparentEdge_PixelDrawn
export SemitransparentEdge_FowardYDirectionRangeCheckComplete
SemitransparentEdge_FowardYDirectionRangeCheckComplete:
;
mov ebx, eax
mov eax, dword [rel CurrentDisplayHeight]
sub eax, edi
test r15, 32
je SemitransparentEdge_YDirectionCorrectionCompleteAtPixelAddress
inc eax
export SemitransparentEdge_YDirectionCorrectionCompleteAtPixelAddress
SemitransparentEdge_YDirectionCorrectionCompleteAtPixelAddress:
dec eax
mov edx, dword [rel CurrentDisplayWidth]
mul edx
test r15, 16
je SemitransparentEdge_BackwardsXDirectionCorrectionCompleteAtPixelAddress
dec esi
add eax, esi
adc edx, 0
inc esi
jmp SemitransparentEdge_FowardXDirectionCorrectionCompleteAtPixelAddress
export SemitransparentEdge_BackwardsXDirectionCorrectionCompleteAtPixelAddress
SemitransparentEdge_BackwardsXDirectionCorrectionCompleteAtPixelAddress:
add eax, esi
adc edx, 0
export SemitransparentEdge_FowardXDirectionCorrectionCompleteAtPixelAddress
SemitransparentEdge_FowardXDirectionCorrectionCompleteAtPixelAddress:
rol rdx, 32
or rax, rdx
shl rax, 2
and ebx, 0xFF
xchg r12, rax
mov al, byte [rel FrameColour]
mul bl
mov dl, 255
div dl
rol ebx, 24
or bl, al
ror ebx, 24
mov al, byte [rel FrameColour+0x1]
mul bl
mov dl, 255
div dl
rol ebx, 16
or bl, al
ror ebx, 16
mov al, byte [rel FrameColour+0x2]
mul bl
mov dl, 255
div dl
rol ebx, 8
or bl, al
ror ebx, 8
xchg r12, rax
;
rol ebx, 24
mov rdx, [rel CreateDIBSection_ppvBits]
mov dword [rdx+rax], ebx
export SemitransparentEdge_PixelDrawn
SemitransparentEdge_PixelDrawn:
;
mov rax, 0xFFFFFFFFFFFFFFF7
and r15, rax
test r15, 4
jne SemitransparentEdge_NextVerticalEdgePixelSelected
mov eax, r9d
sub eax, r8d
test r15, 32
je SemitransparentEdge_YDirectionCorrectionCompleteAtEdgeIterator
neg eax
export SemitransparentEdge_YDirectionCorrectionCompleteAtEdgeIterator
SemitransparentEdge_YDirectionCorrectionCompleteAtEdgeIterator:
sub r13d, eax
add r14d, eax
test r15, 16
je SemitransparentEdge_BackwardsXDirectionIteration
dec esi
jmp SemitransparentEdge_FowardXDirectionIteration
export SemitransparentEdge_BackwardsXDirectionIteration
SemitransparentEdge_BackwardsXDirectionIteration:
inc esi
export SemitransparentEdge_FowardXDirectionIteration
SemitransparentEdge_FowardXDirectionIteration:
cmp esi, r11d
jne SemitransparentEdge_ScanPixel
jmp SemitransparentEdge_NextHorizontalEdgePixelSelected
export SemitransparentEdge_NextVerticalEdgePixelSelected
SemitransparentEdge_NextVerticalEdgePixelSelected:
;
mov eax, r11d
sub eax, r10d
test r15, 16
je SemitransparentEdge_XDirectionCorrectionCompleteAtEdgeIterator
neg eax
export SemitransparentEdge_XDirectionCorrectionCompleteAtEdgeIterator
SemitransparentEdge_XDirectionCorrectionCompleteAtEdgeIterator:
add r13d, eax
sub r14d, eax
test r15, 32
je SemitransparentEdge_BackwardsYDirectionIteration
dec edi
jmp SemitransparentEdge_FowardYDirectionIteration
export SemitransparentEdge_BackwardsYDirectionIteration
SemitransparentEdge_BackwardsYDirectionIteration:
inc edi
export SemitransparentEdge_FowardYDirectionIteration
SemitransparentEdge_FowardYDirectionIteration:
cmp edi, r9d
jne SemitransparentEdge_ScanPixel
export SemitransparentEdge_NextHorizontalEdgePixelSelected
SemitransparentEdge_NextHorizontalEdgePixelSelected:
;
export SemitransparentEdge_LineDrawn
SemitransparentEdge_LineDrawn:
and r15, 3
inc r15
and r15, 3
test r15, r15
jne SemitransparentEdge_ScanLine
;
cmp dword [rel DEVMODEW_dmBitsPerPel], 8
ja UpdateWindow_256ColorCompatibleCopyComplete
;
; If there were Windows 7 support for transparency on 256 color mode, it would be buggy as
; anything else on 256 colors.
;
mov r10d, dword [rel CurrentDisplayWidth]
mov r11d, dword [rel CurrentDisplayHeight]
mov rsi, [rel CreateDIBSection_ppvBits]
;
mov eax, r10d
lea edx, [r11d-0x1]
mul edx
rol rdx, 32
or rax, rdx
lea rsi, [rsi+4*rax]
;
;lea edi, [r11d-0x1] ;row
xor rdi, rdi
mov rbx, qword [rel HeapAlloc__]
xor rax, rax
xor rcx, rcx
xor rdx, rdx
mov dword [rbx], 0x20
mov dword [rbx+0x4], 1
mov dword [rbx+0x8], 0 ; Count of rectangles
mov dword [rbx+0xC], 0 ; Buffer size for rectangles
mov dword [rbx+0x10], 0 ; left
mov dword [rbx+0x14], 0 ; top
mov dword [rbx+0x18], r10d ; right
mov dword [rbx+0x1C], r11d ; bottom
;
export UpdateWindow_RegionHeaderInitialised
UpdateWindow_RegionHeaderInitialised:
inc ecx
cmp byte [rsi+4*rcx-0x1], al
jne UpdateWindow_FoundVisiblePixel
cmp ecx, r10d
je UpdateWindow_RowScanned
jmp UpdateWindow_RegionHeaderInitialised
;
export UpdateWindow_FoundVisiblePixel
UpdateWindow_FoundVisiblePixel:
lea r12d, [ecx-0x1]
;
export UpdateWindow_FirstVisiblePixelSet
UpdateWindow_FirstVisiblePixelSet:
inc ecx
cmp ecx, r10d
ja UpdateWindow_RegionFound
cmp byte [rsi+4*rcx-0x1], al
jne UpdateWindow_FirstVisiblePixelSet
;
export UpdateWindow_RegionFound
UpdateWindow_RegionFound:
mov dword [rbx+rdx+0x20], r12d
mov dword [rbx+rdx+0x24], edi
lea r12d, [ecx-0x1]
mov dword [rbx+rdx+0x28], r12d
lea r12d, [edi+0x1]
mov dword [rbx+rdx+0x2C], r12d
inc dword [rbx+0x8]
add edx, 0x10
mov dword [rbx+0xC], edx
cmp ecx, r10d
jb UpdateWindow_RegionHeaderInitialised
;
export UpdateWindow_RowScanned
UpdateWindow_RowScanned:
inc edi
cmp edi, r11d
je UpdateWindow_BitmapScanned
mov ecx, r10d
shl rcx, 2
sub rsi, rcx
xor rcx, rcx
jmp UpdateWindow_RegionHeaderInitialised
export UpdateWindow_BitmapScanned
UpdateWindow_BitmapScanned:
;
cmp dword [rbx+0x8], 0
jne UpdateWindow_RegionFilled
mov dword [rbx+rdx+0x20], 0
mov dword [rbx+rdx+0x24], 0
mov dword [rbx+rdx+0x28], 0
mov dword [rbx+rdx+0x2C], 0
inc dword [rbx+0x8]
add edx, 0x10
mov dword [rbx+0xC], edx
export UpdateWindow_RegionFilled
UpdateWindow_RegionFilled:
;
xor rcx, rcx
lea edx, [edx+0x20]
mov r8, qword [rel HeapAlloc__]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_ExtCreateRegion_]
mov [rel HRGN_VisibleAlphaChannel], rax
;
mov rcx, [rel CreateWindowExW__]
mov rdx, [rel HRGN_VisibleAlphaChannel]
xor r8, r8
call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowRgn_]
mov [rel SetWindowRgn__], rax
;
mov byte [rel FullScreenRegionIsSet], 0
;
cmp byte [rel LayeredWindowIsReset], 0
jne RunOnceTestComplete
mov rcx, [rel CreateWindowExW__]
xor rdx, rdx
mov r8d, 255
mov r9d, 2
call [rel GetProcAddress_LoadLibrary_user32_dll_SetLayeredWindowAttributes_]
mov qword [rel SetLayeredWindowAttributes__], rax
;mov rcx, [rel CreateWindowExW__]
;mov rdx, -20
;mov r8, 0x0000000000000000
;call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowLongPtrW_]
;mov [rel SetWindowLongPtrW__], rax
;mov rcx, [rel CreateWindowExW__]
;mov rdx, -20
;mov r8, 0x00000000000C0000
;call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowLongPtrW_]
;mov [rel SetWindowLongPtrW__], rax
mov byte [rel LayeredWindowIsReset], 1
export RunOnceTestComplete
RunOnceTestComplete:
;
mov rcx, [rel CreateWindowExW__]
call [rel GetProcAddress_LoadLibrary_user32_dll_GetDC_]
mov [rel GetDC__], rax
test rax, rax
je ShowMessageBox_DCDrawer
;
mov rcx, [rel GetDC__]
xor rdx, rdx
xor r8, r8
mov r9d, dword [rel CurrentDisplayWidth]
mov eax, dword [rel CurrentDisplayHeight]
mov dword [rsp+0x20], eax
mov rax, [rel CreateCompatibleDC__]
mov qword [rsp+0x28], rax
mov qword [rsp+0x30], 0
mov qword [rsp+0x38], 0
mov qword [rsp+0x40], 0x0000000000CC0020
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_BitBlt_]
mov [rel BitBlt__], rax
test eax, eax
je ShowMessageBox_DCDrawer
;
mov rcx, [rel CreateWindowExW__]
mov rdx, [rel GetDC__]
call [rel GetProcAddress_LoadLibrary_user32_dll_ReleaseDC_]
mov [rel ReleaseDC__], rax
test eax, eax
je ShowMessageBox_DCDrawer
jmp UpdateWindow_TransparencyCompatibleCopyComplete
;
export UpdateWindow_256ColorCompatibleCopyComplete
UpdateWindow_256ColorCompatibleCopyComplete:
;
cmp byte [rel FullScreenRegionIsSet], 0
jne UpdateWindow_TransparencyCompatibleRegionCreated
;
mov r10d, dword [rel CurrentDisplayWidth]
mov r11d, dword [rel CurrentDisplayHeight]
mov dword [rel RGNDATA_RGNDATAHEADER_dwSize_FullScreen], 0x20
mov dword [rel RGNDATA_RGNDATAHEADER_iType_FullScreen], 1
mov dword [rel RGNDATA_RGNDATAHEADER_nCount_FullScreen], 1
mov dword [rel RGNDATA_RGNDATAHEADER_nRgnSize_FullScreen], 0x10
mov dword [rel RGNDATA_RGNDATAHEADER_RECT_left_FullScreen], 0
mov dword [rel RGNDATA_RGNDATAHEADER_RECT_top_FullScreen], 0
mov dword [rel RGNDATA_RGNDATAHEADER_RECT_right_FullScreen], r10d
mov dword [rel RGNDATA_RGNDATAHEADER_RECT_bottom_FullScreen], r11d
mov dword [rel RGNDATA_Buffer_left_FullScreen], 0
mov dword [rel RGNDATA_Buffer_top_FullScreen], 0
mov dword [rel RGNDATA_Buffer_right_FullScreen], r10d
mov dword [rel RGNDATA_Buffer_bottom_FullScreen], r11d
;
xor rcx, rcx
mov edx, 48
lea r8, [rel RGNDATA_FullScreen]
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_ExtCreateRegion_]
mov [rel HRGN_FullScreen], rax
;
mov rcx, [rel CreateWindowExW__]
mov rdx, [rel HRGN_FullScreen]
mov r8, 1
call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowRgn_]
mov [rel SetWindowRgn__], rax
;
mov byte [rel FullScreenRegionIsSet], 1
export UpdateWindow_TransparencyCompatibleRegionCreated
UpdateWindow_TransparencyCompatibleRegionCreated:
;
xor rcx, rcx
call [rel GetProcAddress_LoadLibrary_user32_dll_GetDC_]
mov [rel GetDC_0_], rax
test rax, rax
je ShowMessageBox_DCDrawer
;
mov byte [rel IsRepeatedCall_UpdateLayeredWindow__], 0
export UpdateLayeredWindow_RepeatStatusFixed
UpdateLayeredWindow_RepeatStatusFixed:
mov rcx, [rel CreateWindowExW__]
mov rdx, [rel GetDC_0_]
lea r8, [rel UpdateLayeredWindow_pptDst]
mov eax, dword [rel CurrentDisplayWidth]
mov dword [rel UpdateLayeredWindow_psize], eax
mov eax, dword [rel CurrentDisplayHeight]
mov dword [rel UpdateLayeredWindow_psize+0x4], eax
lea r9, [rel UpdateLayeredWindow_psize]
mov rax, [rel CreateCompatibleDC__]
mov qword [rsp+0x20], rax
lea rax, [rel UpdateLayeredWindow_pptSrc]
mov qword [rsp+0x28], rax
mov dword [rsp+0x30], 0
lea rax, [rel BLENDFUNCTION]
mov qword [rsp+0x38], rax
mov dword [rsp+0x40], 2
call [rel GetProcAddress_LoadLibrary_user32_dll_UpdateLayeredWindow_]
mov [rel UpdateLayeredWindow__], rax
;
test eax, eax
jne UpdateLayeredWindow_Succeeded
cmp byte [rel IsRepeatedCall_UpdateLayeredWindow__], 0
jne ShowMessageBox_DCDrawer
mov rcx, [rel CreateWindowExW__]
mov rdx, -20
mov r8, 0x0000000000000000
call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowLongPtrW_]
mov [rel SetWindowLongPtrW__], rax
mov rcx, [rel CreateWindowExW__]
mov rdx, -20
mov r8, 0x00000000000C0000
call [rel GetProcAddress_LoadLibrary_user32_dll_SetWindowLongPtrW_]
mov [rel SetWindowLongPtrW__], rax
;
mov byte [rel IsRepeatedCall_UpdateLayeredWindow__], 1
jmp UpdateLayeredWindow_RepeatStatusFixed
export UpdateLayeredWindow_Succeeded
UpdateLayeredWindow_Succeeded:
mov byte [rel LayeredWindowIsReset], 0
;
xor rcx, rcx
mov rdx, [rel GetDC_0_]
call [rel GetProcAddress_LoadLibrary_user32_dll_ReleaseDC_]
mov [rel ReleaseDC__], rax
test eax, eax
je ShowMessageBox_DCDrawer
export UpdateWindow_TransparencyCompatibleCopyComplete
UpdateWindow_TransparencyCompatibleCopyComplete:
;
mov rcx, [rel CreateWindowExW__]
xor rdx, rdx
call [rel GetProcAddress_LoadLibrary_user32_dll_ValidateRect_]
mov [rel ValidateRect__], rax
test eax, eax
je ShowMessageBox_DCDrawer
;
call [rel GetProcAddress_LoadLibrary_Gdi32_dll_GdiFlush_]
inc qword [rel FramesDrawn]
jmp SetFrame
;
export ShowMessageBox_DCDrawer
ShowMessageBox_DCDrawer:
lea rdx, [rel guimessage]
lea r8, [rel guititle]
export ShowMessageBoxWithCustomText_DCDrawer
ShowMessageBoxWithCustomText_DCDrawer:
xor rcx, rcx
xor r9, r9
call [rel GetProcAddress_LoadLibrary_user32_dll_MessageBoxA_]
xor rax, rax
add rsp, 0x78
ret


section .data use64 align=16

export user32_dll_0
export MessageBoxA_0
export guititle
export guimessage
user32_dll_0 db "user32.dll",0
MessageBoxA_0 db "MessageBoxA",0
guititle db "This is an example title",0
guimessage db "This is an example message! ",0
export kernel32_dll_0
export CreateFileMappingW_0
export Gdi32_dll_0
export CreateCompatibleDC_0
kernel32_dll_0 db "kernel32.dll",0
CreateFileMappingW_0 db "CreateFileMappingW",0
Gdi32_dll_0 db "Gdi32.dll",0
CreateCompatibleDC_0 db "CreateCompatibleDC",0
export CreateDIBSection_0
export SelectObject_0
export CreateWindowExW_0
export GetModuleHandleA_0
CreateDIBSection_0 db "CreateDIBSection",0
SelectObject_0 db "SelectObject",0
CreateWindowExW_0 db "CreateWindowExW",0
GetModuleHandleA_0 db "GetModuleHandleA",0
export RegisterClassExW_0
export DefWindowProcW_0
export _0
export ShowWindow_0
export UpdateWindow_0
export GetMessageW_0
export TranslateMessage_0
export DispatchMessageW_0
RegisterClassExW_0 db "RegisterClassExW",0
DefWindowProcW_0 db "DefWindowProcW",0
align 8, db 0
_0 dq 32
ShowWindow_0 db "ShowWindow",0
UpdateWindow_0 db "UpdateWindow",0
GetMessageW_0 db "GetMessageW",0
TranslateMessage_0 db "TranslateMessage",0
DispatchMessageW_0 db "DispatchMessageW",0
export SetWindowLongPtrW_0
export SetWindowPos_0
SetWindowLongPtrW_0 db "SetWindowLongPtrW",0
SetWindowPos_0 db "SetWindowPos",0
export CreateThread_0
export GetDC_0
export GdiFlush_0
export BitBlt_0
export ValidateRect_0
export SetLayeredWindowAttributes_0
export IsWindowEnabled_0
export IsWindowVisible_0
CreateThread_0 db "CreateThread",0
GetDC_0 db "GetDC",0
GdiFlush_0 db "GdiFlush",0
BitBlt_0 db "BitBlt",0
ValidateRect_0 db "ValidateRect",0
SetLayeredWindowAttributes_0 db "SetLayeredWindowAttributes",0
IsWindowEnabled_0 db "IsWindowEnabled",0
IsWindowVisible_0 db "IsWindowVisible",0
export UpdateLayeredWindow_0
export GdiAlphaBlend_0
UpdateLayeredWindow_0 db "UpdateLayeredWindow",0
GdiAlphaBlend_0 db "GdiAlphaBlend",0
export CreatePolygonRgn_0
export CreatePolygonRgn_POINT
export ReleaseDC_0
export SetWindowRgn_0
CreatePolygonRgn_0 db "CreatePolygonRgn",0
align 4, db 0
CreatePolygonRgn_POINT dd 0,0,0,0,0,0,0,0,0,0
ReleaseDC_0 db "ReleaseDC", 0
SetWindowRgn_0 db "SetWindowRgn",0
export LoadCursorW_0
export VirtualQuery_0
LoadCursorW_0 db "LoadCursorW",0
VirtualQuery_0 db "VirtualQuery",0
export CreateEventW_0
export SetEvent_0
export guimessage_Event
export guititle_Error
CreateEventW_0 db "CreateEventW",0
SetEvent_0 db "SetEvent",0
guimessage_Event db "Unfortunately, I was unable to use Windows event object\
 to sync with your desktop frame rate.",0
guititle_Error db "Error!",0
export EnumDisplaySettingsW_0
export SetTimer_0
export WaitForSingleObject_0
EnumDisplaySettingsW_0 db "EnumDisplaySettingsW",0
SetTimer_0 db "SetTimer",0
WaitForSingleObject_0 db "WaitForSingleObject",0
export D3DKMTOpenAdapterFromHdc_0
export D3DKMTCreateDevice_0
export D3DKMTWaitForVerticalBlankEvent_0
export D3DKMTDestroyDevice_0
export D3DKMTCloseAdapter_0
D3DKMTOpenAdapterFromHdc_0 db "D3DKMTOpenAdapterFromHdc",0
D3DKMTCreateDevice_0 db "D3DKMTCreateDevice",0
D3DKMTWaitForVerticalBlankEvent_0 db "D3DKMTWaitForVerticalBlankEvent",0
D3DKMTDestroyDevice_0 db "D3DKMTDestroyDevice",0
D3DKMTCloseAdapter_0 db "D3DKMTCloseAdapter",0
export guimessage_DisplayMemory
guimessage_DisplayMemory db "Unfortunately, configured memory size for your \
display is too low.",0
export SetUnhandledExceptionFilter_0
export RaiseException_0
SetUnhandledExceptionFilter_0: db "SetUnhandledExceptionFilter",0
RaiseException_0: db "RaiseException",0
export HeapCreate_0
export HeapAlloc_0
export guimessage_Memory
HeapCreate_0: db "HeapCreate",0
HeapAlloc_0: db "HeapAlloc",0
guimessage_Memory: db "Unable to reserve free memory.",0
export ExtCreateRegion_0
ExtCreateRegion_0: db "ExtCreateRegion", 0
align 16, db 0
export FFFFFFFF
FFFFFFFF: dd -1, -1, -1, -1
export UpdateLayeredWindow_pptDst
export UpdateLayeredWindow_pptSrc
export BLENDFUNCTION
export BLENDFUNCTION_BlendOp
export BLENDFUNCTION_BlendFlags
export BLENDFUNCTION_SourceConstantAlpha
export BLENDFUNCTION_AlphaFormat
align 8, db 0
UpdateLayeredWindow_pptDst: dd 0, 0
UpdateLayeredWindow_pptSrc: dd 0, 0
BLENDFUNCTION:
BLENDFUNCTION_BlendOp: db 0
BLENDFUNCTION_BlendFlags: db 0
BLENDFUNCTION_SourceConstantAlpha: db 255
BLENDFUNCTION_AlphaFormat: db 1
align 16, db 0
export __FFFFFF
export FF000000
__FFFFFF: dd 0x00FFFFFF, 0x00FFFFFF, 0x00FFFFFF, 0x00FFFFFF
FF000000: dd 0xFF000000, 0xFF000000, 0xFF000000, 0xFF000000
export guimessage_DisplayMemoryInconsistentSize
guimessage_DisplayMemoryInconsistentSize: db "Operating system returned disp\
lay memory size that does not add up with manual calculations",0
align 4, db 0
export MinimalDisplayWidth
export MinimalDisplayHeight
MinimalDisplayWidth: dd 800
MinimalDisplayHeight: dd 600
export RGNDATA_Empty
export RGNDATA_RGNDATAHEADER_dwSize_Empty
export RGNDATA_RGNDATAHEADER_iType_Empty
export RGNDATA_RGNDATAHEADER_nCount_Empty
export RGNDATA_RGNDATAHEADER_nRgnSize_Empty
export RGNDATA_RGNDATAHEADER_RECT_left_Empty
export RGNDATA_RGNDATAHEADER_RECT_top_Empty
export RGNDATA_RGNDATAHEADER_RECT_right_Empty
export RGNDATA_RGNDATAHEADER_RECT_bottom_Empty
export RGNDATA_Buffer_left_Empty
export RGNDATA_Buffer_top_Empty
export RGNDATA_Buffer_right_Empty
export RGNDATA_Buffer_bottom_Empty
RGNDATA_Empty:
RGNDATA_RGNDATAHEADER_dwSize_Empty: dd 0x20
RGNDATA_RGNDATAHEADER_iType_Empty: dd 1
RGNDATA_RGNDATAHEADER_nCount_Empty: dd 1
RGNDATA_RGNDATAHEADER_nRgnSize_Empty: dd 0x10
RGNDATA_RGNDATAHEADER_RECT_left_Empty: dd 0
RGNDATA_RGNDATAHEADER_RECT_top_Empty: dd 0
RGNDATA_RGNDATAHEADER_RECT_right_Empty: dd 0
RGNDATA_RGNDATAHEADER_RECT_bottom_Empty: dd 0
RGNDATA_Buffer_left_Empty: dd 0
RGNDATA_Buffer_top_Empty: dd 0
RGNDATA_Buffer_right_Empty: dd 0
RGNDATA_Buffer_bottom_Empty: dd 0
export DeleteDC_0
export DeleteObject_0
DeleteDC_0: db "DeleteDC",0
DeleteObject_0: db "DeleteObject",0
export CloseHandle_0
CloseHandle_0: db "CloseHandle",0

section .bss use64 align=16

export LoadLibrary_user32_dll_
export GetProcAddress_LoadLibrary_user32_dll_MessageBoxA_
LoadLibrary_user32_dll_: resq 1
GetProcAddress_LoadLibrary_user32_dll_MessageBoxA_: resq 1
export LoadLibrary_kernel32_dll_
export GetProcAddress_LoadLibrary_kernel32_dll_CreateFileMappingW_
export CreateFileMappingW__
export LoadLibrary_Gdi32_dll_
export GetProcAddress_LoadLibrary_Gdi32_dll_CreateCompatibleDC_
export CreateCompatibleDC__
LoadLibrary_kernel32_dll_: resq 1
GetProcAddress_LoadLibrary_kernel32_dll_CreateFileMappingW_: resq 1
CreateFileMappingW__: resq 1
LoadLibrary_Gdi32_dll_: resq 1
GetProcAddress_LoadLibrary_Gdi32_dll_CreateCompatibleDC_: resq 1
CreateCompatibleDC__: resq 1
export CreateDIBSection_ppvBits
export GetProcAddress_LoadLibrary_Gdi32_dll_CreateDIBSection_
export CreateDIBSection__
export GetProcAddress_LoadLibrary_Gdi32_dll_SelectObject_
export SelectObject__
CreateDIBSection_ppvBits: resq 1
GetProcAddress_LoadLibrary_Gdi32_dll_CreateDIBSection_: resq 1
CreateDIBSection__: resq 1
GetProcAddress_LoadLibrary_Gdi32_dll_SelectObject_: resq 1
SelectObject__: resq 1
export GetProcAddress_LoadLibrary_user32_dll_CreateWindowExW_
export CreateWindowExW__
GetProcAddress_LoadLibrary_user32_dll_CreateWindowExW_: resq 1
CreateWindowExW__: resq 1
export GetProcAddress_LoadLibrary_kernel32_dll_GetModuleHandleA_
export GetModuleHandleA__
GetProcAddress_LoadLibrary_kernel32_dll_GetModuleHandleA_: resq 1
GetModuleHandleA__: resq 1
export GetProcAddress_LoadLibrary_user32_dll_RegisterClassExW_
GetProcAddress_LoadLibrary_user32_dll_RegisterClassExW_: resq 1
export WNDCLASSEX
export WNDCLASSEX_cbSize
export WNDCLASSEX_style
export WNDCLASSEX_lpfnWndProc
export WNDCLASSEX_cbClsExtra
export WNDCLASSEX_cbWndExtra
export WNDCLASSEX_hInstance
export WNDCLASSEX_hIcon
export WNDCLASSEX_hCursor
export WNDCLASSEX_hbrBackground
export WNDCLASSEX_lpszMenuName
export WNDCLASSEX_lpszClassName
export WNDCLASSEX_hIconSm
align 8, db 0
WNDCLASSEX:
WNDCLASSEX_cbSize: resd 1
WNDCLASSEX_style: resd 1
WNDCLASSEX_lpfnWndProc: resq 1
WNDCLASSEX_cbClsExtra: resd 1
WNDCLASSEX_cbWndExtra: resd 1
WNDCLASSEX_hInstance: resq 1
WNDCLASSEX_hIcon: resq 1
WNDCLASSEX_hCursor: resq 1
WNDCLASSEX_hbrBackground: resq 1
WNDCLASSEX_lpszMenuName: resq 1
WNDCLASSEX_lpszClassName: resq 1
WNDCLASSEX_hIconSm: resq 1
export GetProcAddress_LoadLibrary_user32_dll_DefWindowProcW_
export RegisterClassExW__
export GetProcAddress_LoadLibrary_user32_dll_ShowWindow_
export ShowWindow__
export GetProcAddress_LoadLibrary_user32_dll_UpdateWindow_
export UpdateWindow__
GetProcAddress_LoadLibrary_user32_dll_DefWindowProcW_: resq 1
RegisterClassExW__: resq 1
GetProcAddress_LoadLibrary_user32_dll_ShowWindow_: resq 1
ShowWindow__: resq 1
GetProcAddress_LoadLibrary_user32_dll_UpdateWindow_: resq 1
UpdateWindow__: resq 1
export MSG
export MSG_hwnd
export MSG_message
export MSG_wParam_padding
export MSG_wParam
export MSG_lParam
export MSG_time
export MSG_POINT_x
export MSG_POINT_y
export MSG_padding
align 8, db 0
MSG:
MSG_hwnd: resq 1   ;8
MSG_message: resd 1
MSG_wParam_padding: resd 1  ;16
MSG_wParam: resq 1   ;24
MSG_lParam: resq 1   ;32
MSG_time: resd 1
MSG_POINT_x: resd 1    ;40
MSG_POINT_y: resd 1
MSG_padding: resd 1   ;48
export GetProcAddress_LoadLibrary_user32_dll_GetMessageW_
export GetProcAddress_LoadLibrary_user32_dll_TranslateMessage_
export GetProcAddress_LoadLibrary_user32_dll_DispatchMessageW_
export GetMessageW__
GetProcAddress_LoadLibrary_user32_dll_GetMessageW_: resq 1
GetProcAddress_LoadLibrary_user32_dll_TranslateMessage_: resq 1
GetProcAddress_LoadLibrary_user32_dll_DispatchMessageW_: resq 1
GetMessageW__: resq 1
export GetProcAddress_LoadLibrary_user32_dll_SetWindowLongPtrW_
export SetWindowLongPtrW__
export GetProcAddress_LoadLibrary_user32_dll_SetWindowPos_
export SetWindowPos__
GetProcAddress_LoadLibrary_user32_dll_SetWindowLongPtrW_: resq 1
SetWindowLongPtrW__: resq 1
GetProcAddress_LoadLibrary_user32_dll_SetWindowPos_: resq 1
SetWindowPos__: resq 1
export GetProcAddress_LoadLibrary_kernel32_dll_CreateThread_
export CreateThread__
export GetProcAddress_LoadLibrary_user32_dll_GetDC_
export GetDC__
export GetProcAddress_LoadLibrary_Gdi32_dll_GdiFlush_
export GetProcAddress_LoadLibrary_Gdi32_dll_BitBlt_
export BitBlt__
export GetProcAddress_LoadLibrary_user32_dll_ValidateRect_
export ValidateRect__
export GetProcAddress_LoadLibrary_user32_dll_SetLayeredWindowAttributes_
export SetLayeredWindowAttributes__
export GetProcAddress_LoadLibrary_user32_dll_IsWindowEnabled_
export GetProcAddress_LoadLibrary_user32_dll_IsWindowVisible_
export IsWindowEnabled__
export IsWindowVisible__
GetProcAddress_LoadLibrary_kernel32_dll_CreateThread_: resq 1
CreateThread__: resq 1
GetProcAddress_LoadLibrary_user32_dll_GetDC_: resq 1
GetDC__: resq 1
GetProcAddress_LoadLibrary_Gdi32_dll_GdiFlush_: resq 1
GetProcAddress_LoadLibrary_Gdi32_dll_BitBlt_: resq 1
BitBlt__: resq 1
GetProcAddress_LoadLibrary_user32_dll_ValidateRect_: resq 1
ValidateRect__: resq 1
GetProcAddress_LoadLibrary_user32_dll_SetLayeredWindowAttributes_: resq 1
SetLayeredWindowAttributes__: resq 1
GetProcAddress_LoadLibrary_user32_dll_IsWindowEnabled_: resq 1
GetProcAddress_LoadLibrary_user32_dll_IsWindowVisible_: resq 1
IsWindowEnabled__: resq 1
IsWindowVisible__: resq 1
export FramesDrawn
FramesDrawn: resq 1
export GetProcAddress_LoadLibrary_user32_dll_UpdateLayeredWindow_
export GetProcAddress_LoadLibrary_Gdi32_dll_GdiAlphaBlend_
export GdiAlphaBlend__
GetProcAddress_LoadLibrary_user32_dll_UpdateLayeredWindow_: resq 1
GetProcAddress_LoadLibrary_Gdi32_dll_GdiAlphaBlend_: resq 1
GdiAlphaBlend__: resq 1
export GetProcAddress_LoadLibrary_Gdi32_dll_CreatePolygonRgn_
export HRGN
export GetDC__MainThread
export SelectObject__MainThread
export GetProcAddress_LoadLibrary_user32_dll_ReleaseDC_
export ReleaseDC__MainThread
export GetProcAddress_LoadLibrary_user32_dll_SetWindowRgn_
export SetWindowRgn__
GetProcAddress_LoadLibrary_Gdi32_dll_CreatePolygonRgn_: resq 1
HRGN: resq 1
GetDC__MainThread: resq 1
SelectObject__MainThread: resq 1
GetProcAddress_LoadLibrary_user32_dll_ReleaseDC_: resq 1
ReleaseDC__MainThread: resq 1
GetProcAddress_LoadLibrary_user32_dll_SetWindowRgn_: resq 1
SetWindowRgn__: resq 1
export MessagesReceived
MessagesReceived: resq 1
export GetProcAddress_LoadLibrary_user32_dll_LoadCursorW_
export LoadCursorW__
GetProcAddress_LoadLibrary_user32_dll_LoadCursorW_: resq 1
LoadCursorW__: resq 1
export CreatePolygonRgn_POINT_DCDrawer
export HRGN_DCDrawer
export SetWindowRgn__DCDrawer
align 8, resb 1
CreatePolygonRgn_POINT_DCDrawer: resq 5
HRGN_DCDrawer: resq 1
SetWindowRgn__DCDrawer: resq 1
export GetProcAddress_LoadLibrary_kernel32_dll_VirtualQuery_
export MEMORY_BASIC_INFORMATION
export MEMORY_BASIC_INFORMATION_BaseAddress
export MEMORY_BASIC_INFORMATION_AllocationBase
export MEMORY_BASIC_INFORMATION_AllocationProtect
export MEMORY_BASIC_INFORMATION_AllocationProtect_padding
export MEMORY_BASIC_INFORMATION_RegionSize
export MEMORY_BASIC_INFORMATION_State
export MEMORY_BASIC_INFORMATION_Protect
export MEMORY_BASIC_INFORMATION_Type
export MEMORY_BASIC_INFORMATION_padding
export VirtualQuery__
export MEMORY_BASIC_INFORMATION_RegionSize_multipleofMSG
GetProcAddress_LoadLibrary_kernel32_dll_VirtualQuery_: resq 1
align 16, resb 1
MEMORY_BASIC_INFORMATION:
MEMORY_BASIC_INFORMATION_BaseAddress: resq 1 ;8
MEMORY_BASIC_INFORMATION_AllocationBase: resq 1 ;16
MEMORY_BASIC_INFORMATION_AllocationProtect: resd 1
MEMORY_BASIC_INFORMATION_AllocationProtect_padding: resd 1 ;24
MEMORY_BASIC_INFORMATION_RegionSize: resq 1 ;32
MEMORY_BASIC_INFORMATION_State: resd 1
MEMORY_BASIC_INFORMATION_Protect: resd 1 ;40
MEMORY_BASIC_INFORMATION_Type: resd 1
MEMORY_BASIC_INFORMATION_padding: resd 1 ;48
VirtualQuery__: resq 1
MEMORY_BASIC_INFORMATION_RegionSize_multipleofMSG: resq 1
export GetProcAddress_LoadLibrary_kernel32_dll_CreateEventW_
export GetProcAddress_LoadLibrary_kernel32_dll_SetEvent_
export SetEvent__
export CreateEventW__
GetProcAddress_LoadLibrary_kernel32_dll_CreateEventW_: resq 1
GetProcAddress_LoadLibrary_kernel32_dll_SetEvent_: resq 1
SetEvent__: resq 1
CreateEventW__: resq 1
export DEVMODEW
export DEVMODEW_dmDeviceName
export DEVMODEW_dmSpecVersion
export DEVMODEW_dmDriverVersion
export DEVMODEW_dmSize
export DEVMODEW_dmDriverExtra
export DEVMODEW_dmFields
export DEVMODEW_POINTL_x
export DEVMODEW_POINTL_y
export DEVMODEW_dmDisplayOrientation
export DEVMODEW_dmDisplayFixedOutput
export DEVMODEW_dmColor
export DEVMODEW_dmDuplex
export DEVMODEW_dmYResolution
export DEVMODEW_dmTTOption
export DEVMODEW_dmCollate
export DEVMODEW_dmFormName
export DEVMODEW_dmLogPixels
export DEVMODEW_dmBitsPerPel
export DEVMODEW_dmPelsWidth
export DEVMODEW_dmPelsHeight
export DEVMODEW_dmDisplayFlags
export DEVMODEW_dmDisplayFrequency
export DEVMODEW_dmICMMethod
export DEVMODEW_dmOCMIntent
export DEVMODEW_dmMediaType
export DEVMODEW_dmDitherType
export DEVMODEW_dmReserved1
export DEVMODEW_dmReserved2
export DEVMODEW_dmPanningWidth
export DEVMODEW_dmPanningHeight
DEVMODEW:
DEVMODEW_dmDeviceName: resw 32 ;64
DEVMODEW_dmSpecVersion: resw 1
DEVMODEW_dmDriverVersion: resw 1
DEVMODEW_dmSize: resw 1
DEVMODEW_dmDriverExtra: resw 1 ;72
DEVMODEW_dmFields: resd 1
DEVMODEW_POINTL_x: resd 1 ;80
DEVMODEW_POINTL_y: resd 1
DEVMODEW_dmDisplayOrientation: resd 1 ;88
DEVMODEW_dmDisplayFixedOutput: resd 1
DEVMODEW_dmColor: resw 1
DEVMODEW_dmDuplex: resw 1 ;96
DEVMODEW_dmYResolution: resw 1
DEVMODEW_dmTTOption: resw 1
DEVMODEW_dmCollate: resw 1 ; 96 + 6
DEVMODEW_dmFormName: resw 32 ; 160 + 6
DEVMODEW_dmLogPixels: resw 1 ; 168
DEVMODEW_dmBitsPerPel: resd 1
DEVMODEW_dmPelsWidth: resd 1 ; 176
DEVMODEW_dmPelsHeight: resd 1
DEVMODEW_dmDisplayFlags: resd 1 ; 184
DEVMODEW_dmDisplayFrequency: resd 1
DEVMODEW_dmICMMethod: resd 1 ; 192
DEVMODEW_dmOCMIntent: resd 1
DEVMODEW_dmMediaType: resd 1 ; 200
DEVMODEW_dmDitherType: resd 1
DEVMODEW_dmReserved1: resd 1 ; 208
DEVMODEW_dmReserved2: resd 1
DEVMODEW_dmPanningWidth: resd 1 ; 216
DEVMODEW_dmPanningHeight: resd 1 ; 216+4=220
export GetProcAddress_LoadLibrary_user32_dll_EnumDisplaySettingsW_
export EnumDisplaySettingsW__
export GetProcAddress_LoadLibrary_user32_dll_SetTimer_
export SetTimer_uElapse
export SetTimer__
export GetProcAddress_LoadLibrary_kernel32_dll_WaitForSingleObject_
export WaitForSingleObject__
align 8, resb 1
GetProcAddress_LoadLibrary_user32_dll_EnumDisplaySettingsW_: resq 1
EnumDisplaySettingsW__: resq 1
GetProcAddress_LoadLibrary_user32_dll_SetTimer_: resq 1
SetTimer_uElapse: resw 1
align 8, resb 1
SetTimer__: resq 1
GetProcAddress_LoadLibrary_kernel32_dll_WaitForSingleObject_: resq 1
WaitForSingleObject__: resq 1
export GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTOpenAdapterFromHdc_
export GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTWaitForVerticalBlankEvent_
GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTOpenAdapterFromHdc_: resq 1
GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTWaitForVerticalBlankEvent_: resq 1
export D3DKMT_OPENADAPTERFROMHDC
export D3DKMT_OPENADAPTERFROMHDC_hDc
export D3DKMT_OPENADAPTERFROMHDC_hAdapter
export D3DKMT_OPENADAPTERFROMHDC_LUID_LowPart
export D3DKMT_OPENADAPTERFROMHDC_LUID_HighPart
export D3DKMT_OPENADAPTERFROMHDC_VidPnSourceId
D3DKMT_OPENADAPTERFROMHDC:
D3DKMT_OPENADAPTERFROMHDC_hDc: resq 1 ;8
D3DKMT_OPENADAPTERFROMHDC_hAdapter: resd 1
D3DKMT_OPENADAPTERFROMHDC_LUID_LowPart: resd 1 ;16
D3DKMT_OPENADAPTERFROMHDC_LUID_HighPart: resd 1
D3DKMT_OPENADAPTERFROMHDC_VidPnSourceId: resd 1 ;24
export D3DKMTOpenAdapterFromHdc__
D3DKMTOpenAdapterFromHdc__: resq 1
export GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTCreateDevice_
GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTCreateDevice_: resq 1
export D3DKMT_CREATEDEVICE
export D3DKMT_CREATEDEVICE_hAdapter
export D3DKMT_CREATEDEVICE_unionpadding
export D3DKMT_CREATEDEVICE_Flags
export D3DKMT_CREATEDEVICE_hDevice
export D3DKMT_CREATEDEVICE_pCommandBuffer
export D3DKMT_CREATEDEVICE_CommandBufferSize
export D3DKMT_CREATEDEVICE_CommandBufferSize_padding
export D3DKMT_CREATEDEVICE_pAllocationList
export D3DKMT_CREATEDEVICE_AllocationListSize
export D3DKMT_CREATEDEVICE_AllocationListSize_padding
export D3DKMT_CREATEDEVICE_pPatchLocationList
export D3DKMT_CREATEDEVICE_PatchLocationListSize
export D3DKMT_CREATEDEVICE_padding
D3DKMT_CREATEDEVICE:
D3DKMT_CREATEDEVICE_hAdapter: resd 1
D3DKMT_CREATEDEVICE_unionpadding: resd 1 ;8
D3DKMT_CREATEDEVICE_Flags: resd 1
D3DKMT_CREATEDEVICE_hDevice: resd 1 ;16
D3DKMT_CREATEDEVICE_pCommandBuffer: resq 1 ;24
D3DKMT_CREATEDEVICE_CommandBufferSize: resd 1
D3DKMT_CREATEDEVICE_CommandBufferSize_padding: resd 1 ;32
D3DKMT_CREATEDEVICE_pAllocationList: resq 1 ;40
D3DKMT_CREATEDEVICE_AllocationListSize: resd 1
D3DKMT_CREATEDEVICE_AllocationListSize_padding: resd 1 ;48
D3DKMT_CREATEDEVICE_pPatchLocationList: resq 1 ;56
D3DKMT_CREATEDEVICE_PatchLocationListSize: resd 1
D3DKMT_CREATEDEVICE_padding: resd 1 ;64
export D3DKMTCreateDevice__
export GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTDestroyDevice_
export D3DKMT_DESTROYDEVICE
export D3DKMT_DESTROYDEVICE_hDevice
export D3DKMTDestroyDevice__
export GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTCloseAdapter_
export D3DKMT_CLOSEADAPTER
export D3DKMT_CLOSEADAPTER_hAdapter
export D3DKMTCloseAdapter__
align 8, resb 1
D3DKMTCreateDevice__: resq 1
GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTDestroyDevice_: resq 1
D3DKMT_DESTROYDEVICE:
D3DKMT_DESTROYDEVICE_hDevice: resd 1
align 8, resb 1
D3DKMTDestroyDevice__: resq 1
GetProcAddress_LoadLibrary_Gdi32_dll_D3DKMTCloseAdapter_: resq 1
D3DKMT_CLOSEADAPTER:
D3DKMT_CLOSEADAPTER_hAdapter: resd 1
align 8, resb 1
D3DKMTCloseAdapter__: resq 1
export D3DKMT_WAITFORVERTICALBLANKEVENT
export D3DKMT_WAITFORVERTICALBLANKEVENT_hAdapter
export D3DKMT_WAITFORVERTICALBLANKEVENT_hDevice
export D3DKMT_WAITFORVERTICALBLANKEVENT_VidPnSourceId
D3DKMT_WAITFORVERTICALBLANKEVENT:
D3DKMT_WAITFORVERTICALBLANKEVENT_hAdapter: resd 1
D3DKMT_WAITFORVERTICALBLANKEVENT_hDevice: resd 1 ;8
D3DKMT_WAITFORVERTICALBLANKEVENT_VidPnSourceId: resd 1
export D3DKMTWaitForVerticalBlankEvent__
align 8, resb 1
D3DKMTWaitForVerticalBlankEvent__: resq 1
export ReleaseDC__
ReleaseDC__: resq 1
export BITMAPINFO
export BITMAPINFO_BITMAPINFOHEADER_biSize
export BITMAPINFO_BITMAPINFOHEADER_biWidth
export BITMAPINFO_BITMAPINFOHEADER_biHeight
export BITMAPINFO_BITMAPINFOHEADER_biPlanes
export BITMAPINFO_BITMAPINFOHEADER_biBitCount
export BITMAPINFO_BITMAPINFOHEADER_biCompression
export BITMAPINFO_BITMAPINFOHEADER_biSizeImage
export BITMAPINFO_BITMAPINFOHEADER_biXPelsPerMeter
export BITMAPINFO_BITMAPINFOHEADER_biYPelsPerMeter
export BITMAPINFO_BITMAPINFOHEADER_biClrUsed
export BITMAPINFO_BITMAPINFOHEADER_biClrImportant
export BITMAPINFO_RGBQUAD
export BITMAPINFO_RGBQUAD_rgbBlue
export BITMAPINFO_RGBQUAD_rgbGreen
export BITMAPINFO_RGBQUAD_rgbRed
export BITMAPINFO_RGBQUAD_rgbReserved
BITMAPINFO:
BITMAPINFO_BITMAPINFOHEADER_biSize: resd 1 ;dd 0x00000028
BITMAPINFO_BITMAPINFOHEADER_biWidth: resd 1 ; dd 0x00000258  ;8
BITMAPINFO_BITMAPINFOHEADER_biHeight: resd 1 ; dd 0x00000190
BITMAPINFO_BITMAPINFOHEADER_biPlanes: resw 1 ; dw 0x0001
BITMAPINFO_BITMAPINFOHEADER_biBitCount: resw 1 ; dw 0x0020   ;16
BITMAPINFO_BITMAPINFOHEADER_biCompression: resd 1 ; dd 0
BITMAPINFO_BITMAPINFOHEADER_biSizeImage: resd 1 ; dd 0       ;24
BITMAPINFO_BITMAPINFOHEADER_biXPelsPerMeter: resd 1 ; dd 0
BITMAPINFO_BITMAPINFOHEADER_biYPelsPerMeter: resd 1 ; dd 0    ;32
BITMAPINFO_BITMAPINFOHEADER_biClrUsed: resd 1 ; dd 0
BITMAPINFO_BITMAPINFOHEADER_biClrImportant: resd 1 ; dd 0    ;40
BITMAPINFO_RGBQUAD:
BITMAPINFO_RGBQUAD_rgbBlue: resb 1 ; db 0
BITMAPINFO_RGBQUAD_rgbGreen: resb 1 ; db 0
BITMAPINFO_RGBQUAD_rgbRed: resb 1 ; db 0
BITMAPINFO_RGBQUAD_rgbReserved: resb 1 ; db 0        ;44
export GetProcAddress_LoadLibrary_kernel32_dll_SetUnhandledExceptionFilter_
export SetUnhandledExceptionFilter__
export GetProcAddress_LoadLibrary_kernel32_dll_RaiseException_
GetProcAddress_LoadLibrary_kernel32_dll_SetUnhandledExceptionFilter_: resq 1
SetUnhandledExceptionFilter__: resq 1
GetProcAddress_LoadLibrary_kernel32_dll_RaiseException_: resq 1
export GetProcAddress_LoadLibrary_kernel32_dll_HeapCreate_
export HeapCreate__
export GetProcAddress_LoadLibrary_kernel32_dll_HeapAlloc_
export HeapAlloc__
GetProcAddress_LoadLibrary_kernel32_dll_HeapCreate_: resq 1
HeapCreate__: resq 1
GetProcAddress_LoadLibrary_kernel32_dll_HeapAlloc_: resq 1
HeapAlloc__: resq 1
export GetProcAddress_LoadLibrary_Gdi32_dll_ExtCreateRegion_
GetProcAddress_LoadLibrary_Gdi32_dll_ExtCreateRegion_: resq 1
export UpdateLayeredWindow__
export GetDC_0_
UpdateLayeredWindow__: resq 1
GetDC_0_: resq 1
export UpdateLayeredWindow_psize
UpdateLayeredWindow_psize: resd 2
export CreatePolygonRgn_POINT_FullScreen
export HRGN_FullScreen
CreatePolygonRgn_POINT_FullScreen: resq 5
HRGN_FullScreen: resq 1
export CurrentDisplayWidth
export CurrentDisplayHeight
CurrentDisplayWidth: resd 1
CurrentDisplayHeight: resd 1
export RGNDATA_FullScreen
export RGNDATA_RGNDATAHEADER_dwSize_FullScreen
export RGNDATA_RGNDATAHEADER_iType_FullScreen
export RGNDATA_RGNDATAHEADER_nCount_FullScreen
export RGNDATA_RGNDATAHEADER_nRgnSize_FullScreen
export RGNDATA_RGNDATAHEADER_RECT_left_FullScreen
export RGNDATA_RGNDATAHEADER_RECT_top_FullScreen
export RGNDATA_RGNDATAHEADER_RECT_right_FullScreen
export RGNDATA_RGNDATAHEADER_RECT_bottom_FullScreen
export RGNDATA_Buffer_left_FullScreen
export RGNDATA_Buffer_top_FullScreen
export RGNDATA_Buffer_right_FullScreen
export RGNDATA_Buffer_bottom_FullScreen
RGNDATA_FullScreen:
RGNDATA_RGNDATAHEADER_dwSize_FullScreen: resd 1
RGNDATA_RGNDATAHEADER_iType_FullScreen: resd 1
RGNDATA_RGNDATAHEADER_nCount_FullScreen: resd 1
RGNDATA_RGNDATAHEADER_nRgnSize_FullScreen: resd 1
RGNDATA_RGNDATAHEADER_RECT_left_FullScreen: resd 1
RGNDATA_RGNDATAHEADER_RECT_top_FullScreen: resd 1
RGNDATA_RGNDATAHEADER_RECT_right_FullScreen: resd 1
RGNDATA_RGNDATAHEADER_RECT_bottom_FullScreen: resd 1
RGNDATA_Buffer_left_FullScreen: resd 1
RGNDATA_Buffer_top_FullScreen: resd 1
RGNDATA_Buffer_right_FullScreen: resd 1
RGNDATA_Buffer_bottom_FullScreen: resd 1
export GetProcAddress_LoadLibrary_Gdi32_dll_DeleteDC_
export DeleteDC__
export GetProcAddress_LoadLibrary_Gdi32_dll_DeleteObject_
export DeleteObject__
GetProcAddress_LoadLibrary_Gdi32_dll_DeleteDC_: resq 1
DeleteDC__: resq 1
GetProcAddress_LoadLibrary_Gdi32_dll_DeleteObject_: resq 1
DeleteObject__: resq 1
export GetProcAddress_LoadLibrary_kernel32_dll_CloseHandle_
export CloseHandle__
GetProcAddress_LoadLibrary_kernel32_dll_CloseHandle_: resq 1
CloseHandle__: resq 1
export HRGN_SelectObject
HRGN_SelectObject: resq 1
export HRGN_VisibleAlphaChannel
HRGN_VisibleAlphaChannel: resq 1
export FullScreenRegionIsSet
FullScreenRegionIsSet: resb 1
export IsRepeatedCall_UpdateLayeredWindow__
IsRepeatedCall_UpdateLayeredWindow__: resb 1
export LayeredWindowIsReset
LayeredWindowIsReset: resb 1
align 4, resb 1
export FrameColour
FrameColour: resd 1



