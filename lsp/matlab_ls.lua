return {
  settings = {
    matlab = {
      installPath = "/Applications/MATLAB_R2024a.app",
      telemetry = false, -- Disable telemetry
      indexWorkspace = true, -- Index the whole workspace for references/symbols
      matlabConnectionTiming = "onStart", -- Start MATLAB with the LSP
      enableFullDoc = true, -- Try to provide full documentation on hover
    },
  },
}

