package(default_visibility = ["//visibility:public"])

cc_library(
    name = "startup_ARMCM4_FP",
    copts = [
        "-fno-pic",
    ],
    srcs = [
        "src/startup_ARMCM4.S",
        "src/system_ARMCM4.c",
    ],
    includes = ["include"],
    hdrs = [
        "include/ARMCM4_FP.h",
        "include/system_ARMCM4.h",
        "include/core_cm4.h",
        "include/cmsis_version.h",
        "include/cmsis_compiler.h",
        "include/cmsis_gcc.h",
        "include/mpu_armv7.h",
    ],
    defines = ["ARMCM4_FP=1"],
    alwayslink = 1,
)

exports_files(["src/gcc_arm.ld"])
