using namespace runtime;

int run(std::filesystem::path const &Path) {
  WebAssemblyInstanceBuilder InstanceBuilder(Path);
  
#define WASI_IMPORT(name, func)                                   \
  InstanceBuilder.tryImport("wasi_snapshot_preview1", name, func)
  WASI_IMPORT("proc_exit"     , wasi::proc_exit     );
  WASI_IMPORT("clock_time_get", wasi::clock_time_get);
  WASI_IMPORT("args_sizes_get", wasi::args_sizes_get);
  ......
#undef WASI_IMPORT

  WebAssemblyInstance Instance = InstanceBuilder.Build();
  WebAssemblyCallee FnStart = Instance->getFunction("_start");
  try {
    FnStart.invoke<void>(); // _start : [] -> []
  } catch (wasi::exceptions::WASIExit const &Exception) {
    return Exception.getExitCode();
  }
  return 0;
}
