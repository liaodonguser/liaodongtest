# 修正后的完整代码
# 自定义函数：检查向量中每个值是否高于指定阈值
check_above_threshold <- function(x, threshold = 35) {
  n <- length(x)
  result <- logical(n)  # 初始化逻辑向量存储结果
  for (i in seq_along(x)) {
    result[i] <- x[i] > threshold  # 逐个判断是否高于阈值
  }
  return(result)
}

# 设置随机种子（保证结果可复现）
set.seed(1111)
# 生成10个服从正态分布的随机数
y <- rnorm(n = 10, mean = 35, sd = 10)
# 调用函数判断每个值是否高于35
r <- check_above_threshold(y, threshold = 35)
# 输出结果表格
data.frame(
  值 = y,
  是否高于35 = r
)