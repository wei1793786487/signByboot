package com.hqgml.sign.utlis.Exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Devil
 * @date 2019/12/18 21:02
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class XxException extends RuntimeException {
    private ExceptionEnums exceptionEnums;

}
