A basic kernel: hello_kernel.cl

```OpenCL

__kernel void hello_kernel(__global char16 *msg) {
*msg = (char16)('H', 'e', 'l', 'l', 'o', ' ',
'k', 'e', 'r', 'n', 'e', 'l', '!', '!', '!', '\0');
}
```

* Every kernel declaration must start with __kernel.
* Every kernel function must return void.
* Some platforms won’t compile kernels without arguments.

kernel function must be preceded by the __kernel keyword. If __kernel is present, the
compiler will know that the function is intended to be run on a device, not the host.

The clSetKernelArg function sets arguments for kernels, but there are no functions that access a kernel’s return value. This is because kernels don’t have return values—every kernel function returns void.

A kernel function can only access and return data through its arguments, and if you attempt to compile a kernel without arguments, some compilers will give you an error.