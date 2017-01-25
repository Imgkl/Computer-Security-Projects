.class Lcom/julysystems/appx/AppXRenderFont;
.super Ljava/lang/Object;
.source "AppXRenderFont.java"


# instance fields
.field public fontFamilyName:Ljava/lang/String;

.field public fontSize:F

.field private metrics:Landroid/graphics/Paint$FontMetrics;


# direct methods
.method public constructor <init>(FLjava/lang/String;)V
    .locals 0
    .param p1, "fontSize"    # F
    .param p2, "fontFamilyName"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/julysystems/appx/AppXRenderFont;->fontSize:F

    .line 15
    iput-object p2, p0, Lcom/julysystems/appx/AppXRenderFont;->fontFamilyName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getHeight(Landroid/graphics/Paint;)F
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderFont;->metrics:Landroid/graphics/Paint$FontMetrics;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/julysystems/appx/AppXRenderFont;->set(Landroid/graphics/Paint;)V

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderFont;->metrics:Landroid/graphics/Paint$FontMetrics;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderFont;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderFont;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderFont;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v0, v1

    return v0
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderFont;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 23
    :goto_0
    iget v0, p0, Lcom/julysystems/appx/AppXRenderFont;->fontSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 24
    return-void

    .line 22
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method
