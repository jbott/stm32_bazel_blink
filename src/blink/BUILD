load("//platform/stm32f3:binary.bzl", "stm32f303ze_binary")
load("//platform/stm32f3:flash.bzl", "flash_script")
load("@gcc_arm_none_eabi//extras:raw_binary.bzl", "raw_binary")
load("@gcc_arm_none_eabi//extras:ihex_binary.bzl", "ihex_binary")

stm32f303ze_binary(
    name = "blink",
    srcs = [
        "blink.c",
    ],
    deps = [
        "//lib/rtt:rtt",
    ],
)

raw_binary(
    name = "bin",
    src = ":blink",
)

ihex_binary(
    name = "hex",
    src = ":blink",
)

flash_script(
    name = "flash_script",
    hex_file = ":hex",
)

sh_binary(
    name = "flash",
    srcs = [":flash_script"],
    data = [":hex"],
)
