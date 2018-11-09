#include <stdint.h>

#define RCC                 (0x40021000)
#define RCC_AHBENR          ((volatile uint32_t *)(RCC + 0x14))
#define RCC_AHBENR_GPIOB    (1 << 18)

#define GPIOB               (0x48000400)
#define GPIOB_MODER         ((volatile uint32_t *)(GPIOB + 0x0))
#define GPIOB_MODER_OUT     (1)
#define GPIOB_ODR           ((volatile uint32_t *)(GPIOB + 0x14))

int main(void) {
    // Enable GPIOD
    *RCC_AHBENR |= RCC_AHBENR_GPIOB;

    *GPIOB_MODER |= (GPIOB_MODER_OUT << 2*0);

    while (1) {
        // Toggle LED
        *GPIOB_ODR ^= (1 << 0);

        int i = 1000000;
        while (i--);
    }
}

