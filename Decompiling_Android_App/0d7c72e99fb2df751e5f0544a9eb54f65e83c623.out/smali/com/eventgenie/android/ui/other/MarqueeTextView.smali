.class public Lcom/eventgenie/android/ui/other/MarqueeTextView;
.super Landroid/widget/TextView;
.source "MarqueeTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/eventgenie/android/ui/other/MarqueeTextView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lcom/eventgenie/android/ui/other/MarqueeTextView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/eventgenie/android/ui/other/MarqueeTextView;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/other/MarqueeTextView;->setFocusable(Z)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/other/MarqueeTextView;->setFocusableInTouchMode(Z)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/other/MarqueeTextView;->setSingleLine(Z)V

    .line 73
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/other/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 74
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/ui/other/MarqueeTextView;->setMarqueeRepeatLimit(I)V

    .line 77
    new-instance v0, Lcom/eventgenie/android/ui/other/MarqueeTextView$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/other/MarqueeTextView$1;-><init>(Lcom/eventgenie/android/ui/other/MarqueeTextView;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/other/MarqueeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/other/MarqueeTextView;->setSelected(Z)V

    .line 60
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "focused"    # Z

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    .line 66
    :cond_0
    return-void
.end method
