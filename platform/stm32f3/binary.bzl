def stm32f303ze_binary(name, deps=[], linkopts=[], **kwargs):
    """Create a STM32F303ZE binary.

    Uses the STM32F303ZE linker script and default ARM Cortex-M4 vector table.
    """
    native.cc_binary(
        name = name,
        deps = deps + [
            "//platform/armcm4:startup_ARMCM4_FP",
            "//platform/stm32f3:src/303ze.ld",
            "//platform/armcm4:src/gcc_arm.ld",
        ],
        linkopts = linkopts + [
                "-static",
                "-T", "$(location //platform/stm32f3:src/303ze.ld)",
                "-T", "$(location //platform/armcm4:src/gcc_arm.ld)",
        ],
        linkstatic = 1,
        **kwargs
    )
