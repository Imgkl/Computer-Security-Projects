.class public final Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;
.super Ljava/lang/Object;
.source "SmoothProgressBarUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method static checkAngle(I)V
    .locals 5
    .param p0, "angle"    # I

    .prologue
    .line 30
    if-ltz p0, :cond_0

    const/16 v0, 0x168

    if-le p0, v0, :cond_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal angle %d: must be >=0 and <= 360"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    return-void
.end method

.method static checkColors([I)V
    .locals 2
    .param p0, "colors"    # [I

    .prologue
    .line 25
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must provide at least 1 color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    return-void
.end method

.method static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s must be not null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-void
.end method

.method static checkPositive(ILjava/lang/String;)V
    .locals 4
    .param p0, "number"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    if-gtz p0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s must not be null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    return-void
.end method

.method static checkPositiveOrZero(FLjava/lang/String;)V
    .locals 5
    .param p0, "number"    # F
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s %d must be positive"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    return-void
.end method

.method static checkSpeed(F)V
    .locals 2
    .param p0, "speed"    # F

    .prologue
    .line 20
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    return-void
.end method

.method public static generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "colors"    # [I
    .param p1, "strokeWidth"    # F

    .prologue
    .line 14
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lfr/castorflex/android/smoothprogressbar/ColorsShape;

    invoke-direct {v1, p1, p0}, Lfr/castorflex/android/smoothprogressbar/ColorsShape;-><init>(F[I)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0
.end method
