# set(BOARD_FLASH_RUNNER stm32cubeprog)

board_runner_args(dfu-util "--pid=0483:df11" "--alt=0" "--dfuse")

board_runner_args(stm32cubeprogrammer "--erase" "--port=swd" "--reset-mode=hw")
board_runner_args(stm32cubeprogrammer "--port=swd" "--reset-mode=hw")

board_runner_args(openocd "--tcl-port=6666")
board_runner_args(openocd --cmd-pre-init "gdb_report_data_abort enable")
board_runner_args(openocd "--no-halt")

board_runner_args(pyocd "--target=stm32u575vgt6")

board_runner_args(jlink "--device=STM32U575xx" "--speed=4000")
board_runner_args(jlink "--device=STM32U575VG" "--reset-after-load")

include(${ZEPHYR_BASE}/boards/common/dfu-util.board.cmake)
include(${ZEPHYR_BASE}/boards/common/stm32cubeprogrammer.board.cmake)
include(${ZEPHYR_BASE}/boards/common/openocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/pyocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
