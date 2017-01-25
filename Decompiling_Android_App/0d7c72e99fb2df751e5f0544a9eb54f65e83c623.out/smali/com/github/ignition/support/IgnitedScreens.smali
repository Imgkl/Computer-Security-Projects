.class public Lcom/github/ignition/support/IgnitedScreens;
.super Ljava/lang/Object;
.source "IgnitedScreens.java"


# static fields
.field public static final SCREEN_DENSITY_HIGH:I = 0xf0

.field public static final SCREEN_DENSITY_LOW:I = 0x78

.field public static final SCREEN_DENSITY_MEDIUM:I = 0xa0

.field public static final SCREEN_DENSITY_XHIGH:I = 0x140

.field private static screenDensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/github/ignition/support/IgnitedScreens;->screenDensity:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dipToPx(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 36
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getScreenDensity(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget v1, Lcom/github/ignition/support/IgnitedScreens;->screenDensity:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 56
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/github/ignition/support/IgnitedScreens;->screenDensity:I

    .line 58
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget v1, Lcom/github/ignition/support/IgnitedScreens;->screenDensity:I

    return v1
.end method

.method public static scaleDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableResourceId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .local v0, "sourceBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x1

    invoke-static {v0, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method
