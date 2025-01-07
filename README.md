# cpu-gemm-ldst-bench

测试多核CPU访存子系统能够支持的最大矩阵扩展算力。

使用普通load/store模拟通用矩阵乘法（GEMM）访存行为。

```
./test.sh | tee xxx.log
```

## 测试结果

测试平台：Intel Xeon 8580 @ 2.30GHz

一些结果：XEON8580.log

## 可配置参数

下列参数可自由组合配置：

- 矩阵分块大小（默认1024x512x512）：
    ```
    make TM=1024 TN=512 TK=512
    ```

- 单核/多核（默认多核）：
    ```
    make SINGLE_CORE=1
    make MULTI_CORE=1
    ```

- 多核测试核数（默认CORES_M=CORES_N=4）
    ```
    make MULTI_CORE=1 CORES_M=4 CORES_N=4
    ```

- 绑定的CPU逻辑核（默认CORE_START=0、CORE_STRIDE=1），如果Core 0和Core 1对应相同的物理核，则需要把CORE_STRIDE置为2
    ```
    make CORE_START=0 CORE_STRIDE=1
    ```

- 测试的访存行为（默认LOAD_C=1、LOAD_AB=1、STORE_C=1）
    - LOAD_C=1、LOAD_AB=1、STORE_C=1：C = A * B + C
    - LOAD_C=0、LOAD_AB=1、STORE_C=1：C = A * B
    - LOAD_C=0、LOAD_AB=1、STORE_C=0：A * B核心循环
    ```
    make LOAD_C=1 LOAD_AB=1 STORE_C=1
    ```

- 矩阵最低维度的PAD（默认为0），各PAD一个cache行的命令：
    ```
    make APAD=64 BPAD=64 CPAD=16
    ```