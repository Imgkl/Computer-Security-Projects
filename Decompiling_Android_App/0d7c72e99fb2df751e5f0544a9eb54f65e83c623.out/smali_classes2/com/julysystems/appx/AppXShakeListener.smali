.class Lcom/julysystems/appx/AppXShakeListener;
.super Ljava/lang/Object;
.source "AppXShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/julysystems/appx/AppXShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final FORCE_THRESHOLD:I = 0x15e

.field private static final SHAKE_COUNT:I = 0x3

.field private static final SHAKE_DURATION:I = 0x3e8

.field private static final SHAKE_TIMEOUT:I = 0x1f4

.field private static final TIME_THRESHOLD:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastForce:J

.field private mLastShake:J

.field private mLastTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mShakeCount:I

.field private mShakeListener:Lcom/julysystems/appx/AppXShakeListener$OnShakeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastX:F

    iput v0, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastY:F

    iput v0, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastZ:F

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/julysystems/appx/AppXShakeListener;->mShakeCount:I

    .line 29
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0
    .param p1, "sensor"    # I
    .param p2, "accuracy"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 13
    .param p1, "sensor"    # I
    .param p2, "values"    # [F

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 61
    if-eq p1, v11, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 65
    .local v2, "now":J
    iget-wide v6, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastForce:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1f4

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 66
    iput v10, p0, Lcom/julysystems/appx/AppXShakeListener;->mShakeCount:I

    .line 69
    :cond_2
    iget-wide v6, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x64

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 70
    iget-wide v6, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastTime:J

    sub-long v0, v2, v6

    .line 71
    .local v0, "diff":J
    aget v5, p2, v10

    aget v6, p2, v12

    add-float/2addr v5, v6

    aget v6, p2, v11

    add-float/2addr v5, v6

    iget v6, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastX:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastZ:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    long-to-float v6, v0

    div-float/2addr v5, v6

    const v6, 0x461c4000    # 10000.0f

    mul-float v4, v5, v6

    .line 72
    .local v4, "speed":F
    const/high16 v5, 0x43af0000    # 350.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    .line 73
    iget v5, p0, Lcom/julysystems/appx/AppXShakeListener;->mShakeCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/julysystems/appx/AppXShakeListener;->mShakeCount:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3

    iget-wide v6, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastShake:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 74
    iput-wide v2, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastShake:J

    .line 76
    iput v10, p0, Lcom/julysystems/appx/AppXShakeListener;->mShakeCount:I

    .line 77
    iget-object v5, p0, Lcom/julysystems/appx/AppXShakeListener;->mShakeListener:Lcom/julysystems/appx/AppXShakeListener$OnShakeListener;

    if-eqz v5, :cond_3

    .line 78
    iget-object v5, p0, Lcom/julysystems/appx/AppXShakeListener;->mShakeListener:Lcom/julysystems/appx/AppXShakeListener$OnShakeListener;

    invoke-interface {v5}, Lcom/julysystems/appx/AppXShakeListener$OnShakeListener;->onShake()V

    .line 81
    :cond_3
    iput-wide v2, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastForce:J

    .line 83
    :cond_4
    iput-wide v2, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastTime:J

    .line 84
    aget v5, p2, v10

    iput v5, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastX:F

    .line 85
    aget v5, p2, v12

    iput v5, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastY:F

    .line 87
    aget v5, p2, v11

    iput v5, p0, Lcom/julysystems/appx/AppXShakeListener;->mLastZ:F

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/julysystems/appx/AppXShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/julysystems/appx/AppXShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 52
    iput-object v2, p0, Lcom/julysystems/appx/AppXShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 53
    iput-object v2, p0, Lcom/julysystems/appx/AppXShakeListener;->mContext:Landroid/content/Context;

    .line 55
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 36
    iput-object p1, p0, Lcom/julysystems/appx/AppXShakeListener;->mContext:Landroid/content/Context;

    .line 37
    iget-object v1, p0, Lcom/julysystems/appx/AppXShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/julysystems/appx/AppXShakeListener;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/julysystems/appx/AppXShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 40
    iget-object v1, p0, Lcom/julysystems/appx/AppXShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    if-nez v1, :cond_2

    .line 41
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sensors not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/julysystems/appx/AppXShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    .line 43
    .local v0, "supported":Z
    if-nez v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/julysystems/appx/AppXShakeListener;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 45
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Accelerometer not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOnShakeListener(Lcom/julysystems/appx/AppXShakeListener$OnShakeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/julysystems/appx/AppXShakeListener$OnShakeListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/julysystems/appx/AppXShakeListener;->mShakeListener:Lcom/julysystems/appx/AppXShakeListener$OnShakeListener;

    .line 33
    return-void
.end method
