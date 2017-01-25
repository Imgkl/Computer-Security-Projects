.class Lcom/julysystems/appx/AppXRenderRenderSelectionButton$2;
.super Ljava/lang/Object;
.source "AppXRenderRenderSelectionButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$2;->this$0:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xff

    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-static {v3, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    :cond_0
    :goto_0
    return v5

    .line 36
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 37
    invoke-static {v2, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$2;->this$0:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

    iget-object v0, v0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 40
    invoke-static {v2, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
