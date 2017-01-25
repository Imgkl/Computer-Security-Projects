.class public interface abstract Lorg/apache/ignite/spi/checkpoint/jdbc/JdbcCheckpointSpiMBean;
.super Ljava/lang/Object;
.source "JdbcCheckpointSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides information about jdbc checkpoint SPI."
.end annotation


# virtual methods
.method public abstract getCheckpointTableName()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Checkpoint table name."
    .end annotation
.end method

.method public abstract getDataSourceInfo()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Data source description."
    .end annotation
.end method

.method public abstract getExpireDateFieldName()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Expiration date field name for checkpoint table."
    .end annotation
.end method

.method public abstract getExpireDateFieldType()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Expiration date field type for checkpoint table."
    .end annotation
.end method

.method public abstract getKeyFieldName()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Key field name for checkpoint table."
    .end annotation
.end method

.method public abstract getKeyFieldType()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Key field type for checkpoint table."
    .end annotation
.end method

.method public abstract getNumberOfRetries()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of retries."
    .end annotation
.end method

.method public abstract getPwd()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Password for checkpoint database."
    .end annotation
.end method

.method public abstract getUser()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "User name for checkpoint database."
    .end annotation
.end method

.method public abstract getValueFieldName()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Value field name for checkpoint table."
    .end annotation
.end method

.method public abstract getValueFieldType()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Value field type for checkpoint table."
    .end annotation
.end method
