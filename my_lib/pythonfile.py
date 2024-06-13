import ctypes
f = ctypes.CDLL("./obj/lib.so").print_foo_c
f.restype = ctypes.c_int
ting = f(1000)

print(f"ting: {ting}")