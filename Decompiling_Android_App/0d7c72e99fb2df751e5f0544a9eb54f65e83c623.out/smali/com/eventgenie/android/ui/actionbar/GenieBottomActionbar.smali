.class public Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;
.super Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;
.source "GenieBottomActionbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$1;,
        Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;,
        Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;
    }
.end annotation


# instance fields
.field private final mAnimationFlipIn:Landroid/view/animation/Animation;

.field private final mAnimationFlipOut:Landroid/view/animation/Animation;

.field private final mFavouriteFlipper:Landroid/widget/ViewFlipper;

.field private final mFullScreenFlipper:Landroid/widget/ViewFlipper;

.field private final mNotesFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;-><init>(Landroid/app/Activity;I)V

    .line 57
    const/4 v0, 0x1

    .line 59
    .local v0, "valid":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbarControls;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ BOTTOMACTIONBAR: CALLING ACTIVITY NOT VALID! - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ BOTTOMACTIONBAR: Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no bottom actionbar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 66
    iput-object v3, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    .line 67
    iput-object v3, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    .line 68
    iput-object v3, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    .line 70
    iput-object v3, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mAnimationFlipIn:Landroid/view/animation/Animation;

    .line 71
    iput-object v3, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mAnimationFlipOut:Landroid/view/animation/Animation;

    .line 72
    const/4 v0, 0x0

    .line 91
    :goto_0
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setIsActionbarValid(Z)V

    .line 92
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->flipper_title_full_screen:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    .line 75
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->flipper_title_favourite:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    .line 76
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->flipper_title_note:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    .line 78
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$anim;->fadein:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mAnimationFlipIn:Landroid/view/animation/Animation;

    .line 79
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$anim;->fadeout:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mAnimationFlipOut:Landroid/view/animation/Animation;

    .line 81
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mAnimationFlipIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 82
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mAnimationFlipOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mAnimationFlipIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 85
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mAnimationFlipOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 87
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mAnimationFlipIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 88
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mAnimationFlipOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private static getCustomButtonId(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;)I
    .locals 3
    .param p0, "button"    # Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    .prologue
    .line 419
    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$1;->$SwitchMap$com$eventgenie$android$ui$actionbar$GenieBottomActionbar$CUSTOM_BUTTON:[I

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 433
    const/4 v0, 0x0

    .line 436
    .local v0, "viewId":I
    :goto_0
    return v0

    .line 421
    .end local v0    # "viewId":I
    :pswitch_0
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton1:I

    .line 422
    .restart local v0    # "viewId":I
    goto :goto_0

    .line 424
    .end local v0    # "viewId":I
    :pswitch_1
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton2:I

    .line 425
    .restart local v0    # "viewId":I
    goto :goto_0

    .line 427
    .end local v0    # "viewId":I
    :pswitch_2
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton3:I

    .line 428
    .restart local v0    # "viewId":I
    goto :goto_0

    .line 430
    .end local v0    # "viewId":I
    :pswitch_3
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton4:I

    .line 431
    .restart local v0    # "viewId":I
    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setViewVisibility(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "show"    # Z

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private setupButton(ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 3
    .param p1, "buttonId"    # I
    .param p2, "imageResourceId"    # Ljava/lang/Integer;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    if-eqz p2, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 221
    :cond_2
    if-eqz p3, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public applyActionBarButtonImageColour(I)V
    .locals 4
    .param p1, "colour"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    :cond_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 99
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    move-object v3, v0

    .line 102
    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 103
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 104
    check-cast v0, Landroid/widget/ImageButton;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 106
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 107
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    instance-of v3, v0, Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 108
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method

.method public bridge synthetic bringToFront()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->bringToFront()V

    return-void
.end method

.method public changeFavIcons(II)V
    .locals 2
    .param p1, "favedResId"    # I
    .param p2, "unfavedResId"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->btn_title_favourite:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 117
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->btn_title_unfavourite:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public displayCustomButton1(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->section_customButton1:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public displayCustomButton2(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->section_customButton2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public displayCustomButton3(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->section_customButton3:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public displayCustomButton4(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->section_customButton4:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public enableActionResetWithText(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->section_resetWithTextWithoutDivider:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->btn_resetWithText:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public enableActionSearchWithText(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->section_searchWithTextWithoutDivider:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->btn_searchWithText:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public enableCustomButton(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Z)V
    .locals 3
    .param p1, "button"    # Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;
    .param p2, "enable"    # Z

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-static {p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getCustomButtonId(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;)I

    move-result v0

    .line 144
    .local v0, "viewId":I
    if-lez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;)Ljava/lang/Object;
    .locals 3
    .param p1, "button"    # Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-object v1

    .line 151
    :cond_1
    invoke-static {p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getCustomButtonId(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;)I

    move-result v0

    .line 153
    .local v0, "viewId":I
    if-lez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getCustomButtonText(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "button"    # Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v1

    .line 162
    :cond_1
    invoke-static {p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getCustomButtonId(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;)I

    move-result v0

    .line 164
    .local v0, "viewId":I
    if-lez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic getDetailsTitleColour()I
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->getDetailsTitleColour()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getView(I)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isActionbarValid()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->isActionbarValid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMarkedAsHideHomeButton()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->isMarkedAsHideHomeButton()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMarkedAsHomeActivity()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->isMarkedAsHomeActivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isProoferEnabled()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->isProoferEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "colour"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic setBackgroundToTransparent()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/eventgenie/android/ui/actionbar/BaseGenieMobileActionbar;->setBackgroundToTransparent()V

    return-void
.end method

.method public setCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Ljava/lang/Object;)V
    .locals 3
    .param p1, "button"    # Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$1;->$SwitchMap$com$eventgenie$android$ui$actionbar$GenieBottomActionbar$CUSTOM_BUTTON:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 195
    const/4 v0, 0x0

    .line 199
    .local v0, "viewId":I
    :goto_1
    if-lez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    .end local v0    # "viewId":I
    :pswitch_0
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton1:I

    .line 184
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 186
    .end local v0    # "viewId":I
    :pswitch_1
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton2:I

    .line 187
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 189
    .end local v0    # "viewId":I
    :pswitch_2
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton3:I

    .line 190
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 192
    .end local v0    # "viewId":I
    :pswitch_3
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton4:I

    .line 193
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setFullLengthText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->text_fullwidth:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setFullLengthTextVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    sget v0, Lcom/eventgenie/android/R$id;->text_fullwidth:I

    invoke-direct {p0, v0, p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setViewVisibility(IZ)V

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    if-eqz p1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageResource"    # Ljava/lang/Integer;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 227
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupButton(ILjava/lang/Integer;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageResource"    # Ljava/lang/Integer;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 231
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton2:I

    invoke-direct {p0, v0, p1, p2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupButton(ILjava/lang/Integer;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public setupCustomButton3(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageResource"    # Ljava/lang/Integer;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 235
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton3:I

    invoke-direct {p0, v0, p1, p2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupButton(ILjava/lang/Integer;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setupCustomButton4(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "imageResource"    # Ljava/lang/Integer;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 239
    sget v0, Lcom/eventgenie/android/R$id;->btn_customButton4:I

    invoke-direct {p0, v0, p1, p2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupButton(ILjava/lang/Integer;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V
    .locals 3
    .param p1, "action"    # Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;
    .param p2, "show"    # Z

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$1;->$SwitchMap$com$eventgenie$android$ui$actionbar$GenieBottomActionbar$ACTION:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 309
    const/4 v0, 0x0

    .line 313
    .local v0, "viewId":I
    :goto_1
    if-lez v0, :cond_0

    .line 314
    invoke-direct {p0, v0, p2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setViewVisibility(IZ)V

    goto :goto_0

    .line 263
    .end local v0    # "viewId":I
    :pswitch_0
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_rate:I

    .line 264
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 266
    .end local v0    # "viewId":I
    :pswitch_1
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_layers:I

    .line 267
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 269
    .end local v0    # "viewId":I
    :pswitch_2
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_meeting:I

    .line 270
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 272
    .end local v0    # "viewId":I
    :pswitch_3
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_message:I

    .line 273
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 275
    .end local v0    # "viewId":I
    :pswitch_4
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_my_location:I

    .line 276
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 278
    .end local v0    # "viewId":I
    :pswitch_5
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_place_marker:I

    .line 279
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 281
    .end local v0    # "viewId":I
    :pswitch_6
    sget v0, Lcom/eventgenie/android/R$id;->section_showRecommendedPeople:I

    .line 282
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 284
    .end local v0    # "viewId":I
    :pswitch_7
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_route:I

    .line 285
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 287
    .end local v0    # "viewId":I
    :pswitch_8
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getCommonLogic()Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/actionbar/CommonActionbarLogicBox;->isShareDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    const/4 v0, 0x0

    .restart local v0    # "viewId":I
    goto :goto_1

    .line 290
    .end local v0    # "viewId":I
    :cond_2
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_share:I

    .line 292
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 294
    .end local v0    # "viewId":I
    :pswitch_9
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_download:I

    .line 295
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 297
    .end local v0    # "viewId":I
    :pswitch_a
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_open:I

    .line 298
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 300
    .end local v0    # "viewId":I
    :pswitch_b
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_email:I

    .line 301
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 303
    .end local v0    # "viewId":I
    :pswitch_c
    sget v0, Lcom/eventgenie/android/R$id;->btn_title_delete:I

    .line 304
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 306
    .end local v0    # "viewId":I
    :pswitch_d
    sget v0, Lcom/eventgenie/android/R$id;->section_replyWithText:I

    .line 307
    .restart local v0    # "viewId":I
    goto :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public showActionFavourite(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "state"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 321
    :cond_0
    if-eqz p2, :cond_2

    .line 322
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 323
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 331
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_1

    .line 331
    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public showActionFullScreen(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "currentlyFullScren"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 337
    :cond_0
    if-eqz p2, :cond_2

    .line 338
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 339
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 347
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_1

    .line 347
    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public showActionNote(ZZ)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "state"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 353
    :cond_0
    if-eqz p2, :cond_2

    .line 354
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 355
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 363
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_1

    .line 363
    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public showActionResetWithText(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->section_resetWithText:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showActionSearchWithText(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getActionbar()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->section_searchWithText:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public toggleFavourite(Z)V
    .locals 2
    .param p1, "doFavourite"    # Z

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 390
    :cond_0
    if-eqz p1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFavouriteFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public toggleFullscreen(Z)V
    .locals 2
    .param p1, "goFullScreen"    # Z

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 400
    :cond_0
    if-eqz p1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mFullScreenFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public toggleNote(Z)V
    .locals 2
    .param p1, "doFavourite"    # Z

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->isActionbarValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 409
    :cond_0
    if-eqz p1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->mNotesFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method
