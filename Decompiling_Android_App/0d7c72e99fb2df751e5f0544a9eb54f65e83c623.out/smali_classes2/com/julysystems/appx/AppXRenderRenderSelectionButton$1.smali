.class Lcom/julysystems/appx/AppXRenderRenderSelectionButton$1;
.super Ljava/lang/Object;
.source "AppXRenderRenderSelectionButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppXRenderRenderSelectionButton;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;


# direct methods
.method constructor <init>(Lcom/julysystems/appx/AppXRenderRenderSelectionButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$1;->this$0:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x80

    const/4 v0, 0x0

    .line 26
    if-eqz p2, :cond_0

    .line 27
    invoke-static {v1, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-static {v0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
