.class public interface abstract Ljavax/cache/management/CacheMXBean;
.super Ljava/lang/Object;
.source "CacheMXBean.java"


# annotations
.annotation runtime Ljavax/management/MXBean;
.end annotation


# virtual methods
.method public abstract getKeyType()Ljava/lang/String;
.end method

.method public abstract getValueType()Ljava/lang/String;
.end method

.method public abstract isManagementEnabled()Z
.end method

.method public abstract isReadThrough()Z
.end method

.method public abstract isStatisticsEnabled()Z
.end method

.method public abstract isStoreByValue()Z
.end method

.method public abstract isWriteThrough()Z
.end method
