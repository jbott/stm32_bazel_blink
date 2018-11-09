load("//platform/stm32f3:binary.bzl", "stm32f303ze_binary")
load("@rules_arm_none_eabi//extras:raw_binary.bzl", "raw_binary")
load("@rules_arm_none_eabi//extras:ihex_binary.bzl", "ihex_binary")

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
