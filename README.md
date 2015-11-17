# For Single LED

## Connection

|GPIO #|Variable Name|Assigned|
|------|-------------|--------|
|4     |GPIO         |LED     |

# For Triple LED

## Connection

|GPIO #|Variable Name|Assigned|
|------|-------------|--------|
|4     |GPIO1        |LED #1  |
|22    |GPIO2        |LED #2  |
|25    |GPIO3        |LED #3  |


# For 7-seg

## Connection

|GPIO #|Variable Name|Assigned     |
|------|-------------|-------------|
|7     |GPIO1        |Dot          |
|25    |GPIO2        |Center-Middle|
|24    |GPIO3        |Left-Upper   |
|23    |GPIO4        |Left-Lower   |
|22    |GPIO5        |Center-Lower |
|27    |GPIO6        |Right-Lower  |
|17    |GPIO7        |Right-Upper  |
|4     |GPIO8        |Center-Upper |

## Layout map

```
 +-(8)-+
 |     |
(3)   (7)
 |     |
 +-(2)-+
 |     |
(4)   (6)
 |     |
 +-(5)-+ (1)
```
