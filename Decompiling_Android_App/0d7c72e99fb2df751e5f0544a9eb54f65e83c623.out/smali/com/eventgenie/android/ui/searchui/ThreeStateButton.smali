.class public Lcom/eventgenie/android/ui/searchui/ThreeStateButton;
.super Landroid/widget/Button;
.source "ThreeStateButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/searchui/ThreeStateButton$2;,
        Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
    }
.end annotation


# instance fields
.field private onStateChangedListener:Landroid/view/View$OnClickListener;

.field private state:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->onStateChangedListener:Landroid/view/View$OnClickListener;

    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->initConfig()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->onStateChangedListener:Landroid/view/View$OnClickListener;

    .line 65
    invoke-direct {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->initConfig()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->onStateChangedListener:Landroid/view/View$OnClickListener;

    .line 75
    invoke-direct {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->initConfig()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/ui/searchui/ThreeStateButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/searchui/ThreeStateButton;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->nextState()V

    return-void
.end method

.method private initConfig()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->NONE:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    iput-object v0, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->state:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .line 85
    new-instance v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$1;-><init>(Lcom/eventgenie/android/ui/searchui/ThreeStateButton;)V

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method private nextState()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->state:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    invoke-static {v0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->nextState(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->state:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->invalidate()V

    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->onStateChangedListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->onStateChangedListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method public getState()Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->state:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    sget-object v3, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$2;->$SwitchMap$com$eventgenie$android$ui$searchui$ThreeStateButton$BUTTON_STATES:[I

    iget-object v4, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->state:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    invoke-virtual {v4}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 117
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_checkbox_tristate_off_holo_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 118
    .local v2, "d3":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 122
    .end local v2    # "d3":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_checkbox_tristate_partial_holo_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    .local v0, "d1":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->getHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 112
    .end local v0    # "d1":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_checkbox_tristate_on_holo_light:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 113
    .local v1, "d2":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->getHeight()I

    move-result v4

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 126
    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->nextState()V

    .line 128
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->setPressed(Z)V

    .line 130
    :cond_0
    return v2
.end method

.method public setOnStateChangedListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->onStateChangedListener:Landroid/view/View$OnClickListener;

    .line 135
    return-void
.end method

.method public setState(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)V
    .locals 0
    .param p1, "state"    # Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->state:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .line 140
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->invalidate()V

    .line 141
    return-void
.end method
