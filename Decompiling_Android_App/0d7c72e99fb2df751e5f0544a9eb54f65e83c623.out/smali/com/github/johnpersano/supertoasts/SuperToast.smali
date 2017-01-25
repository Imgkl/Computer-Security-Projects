.class public Lcom/github/johnpersano/supertoasts/SuperToast;
.super Ljava/lang/Object;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;,
        Lcom/github/johnpersano/supertoasts/SuperToast$Type;,
        Lcom/github/johnpersano/supertoasts/SuperToast$TextSize;,
        Lcom/github/johnpersano/supertoasts/SuperToast$Duration;,
        Lcom/github/johnpersano/supertoasts/SuperToast$Icon;,
        Lcom/github/johnpersano/supertoasts/SuperToast$Animations;,
        Lcom/github/johnpersano/supertoasts/SuperToast$Background;,
        Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;,
        Lcom/github/johnpersano/supertoasts/SuperToast$OnClickListener;
    }
.end annotation


# static fields
.field private static final ERROR_CONTEXTNULL:Ljava/lang/String; = " - You cannot use a null context."

.field private static final ERROR_DURATIONTOOLONG:Ljava/lang/String; = " - You should NEVER specify a duration greater than four and a half seconds for a SuperToast."

.field private static final TAG:Ljava/lang/String; = "SuperToast"


# instance fields
.field private mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

.field private mBackground:I

.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mGravity:I

.field private mMessageTextView:Landroid/widget/TextView;

.field private mOnDismissListener:Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mToastView:Landroid/view/View;

.field private mTypefaceStyle:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 216
    const/16 v1, 0x51

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mGravity:I

    .line 217
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mDuration:I

    .line 220
    iput v2, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mXOffset:I

    .line 221
    iput v2, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mYOffset:I

    .line 236
    if-nez p1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SuperToast - You cannot use a null context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/github/johnpersano/supertoasts/R$dimen;->toast_hover:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mYOffset:I

    .line 247
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 250
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supertoast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    .line 252
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManager:Landroid/view/WindowManager;

    .line 255
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    sget v2, Lcom/github/johnpersano/supertoasts/R$id;->root_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 258
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    sget v2, Lcom/github/johnpersano/supertoasts/R$id;->message_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/github/johnpersano/supertoasts/util/Style;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 216
    const/16 v1, 0x51

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mGravity:I

    .line 217
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mDuration:I

    .line 220
    iput v2, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mXOffset:I

    .line 221
    iput v2, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mYOffset:I

    .line 271
    if-nez p1, :cond_0

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SuperToast - You cannot use a null context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/github/johnpersano/supertoasts/R$dimen;->toast_hover:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mYOffset:I

    .line 282
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 285
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supertoast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    .line 287
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManager:Landroid/view/WindowManager;

    .line 290
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    sget v2, Lcom/github/johnpersano/supertoasts/R$id;->root_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 293
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    sget v2, Lcom/github/johnpersano/supertoasts/R$id;->message_textview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    .line 296
    invoke-direct {p0, p2}, Lcom/github/johnpersano/supertoasts/SuperToast;->setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V

    .line 298
    return-void
.end method

.method public static cancelAllSuperToasts()V
    .locals 1

    .prologue
    .line 732
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->cancelAllSuperToasts()V

    .line 734
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/github/johnpersano/supertoasts/SuperToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I

    .prologue
    .line 676
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperToast;-><init>(Landroid/content/Context;)V

    .line 677
    .local v0, "superToast":Lcom/github/johnpersano/supertoasts/SuperToast;
    invoke-virtual {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->setText(Ljava/lang/CharSequence;)V

    .line 678
    invoke-virtual {v0, p2}, Lcom/github/johnpersano/supertoasts/SuperToast;->setDuration(I)V

    .line 680
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/github/johnpersano/supertoasts/SuperToast$Animations;)Lcom/github/johnpersano/supertoasts/SuperToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "animations"    # Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .prologue
    .line 697
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperToast;-><init>(Landroid/content/Context;)V

    .line 698
    .local v0, "superToast":Lcom/github/johnpersano/supertoasts/SuperToast;
    invoke-virtual {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->setText(Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual {v0, p2}, Lcom/github/johnpersano/supertoasts/SuperToast;->setDuration(I)V

    .line 700
    invoke-virtual {v0, p3}, Lcom/github/johnpersano/supertoasts/SuperToast;->setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V

    .line 702
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/github/johnpersano/supertoasts/util/Style;)Lcom/github/johnpersano/supertoasts/SuperToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    .line 718
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperToast;-><init>(Landroid/content/Context;)V

    .line 719
    .local v0, "superToast":Lcom/github/johnpersano/supertoasts/SuperToast;
    invoke-virtual {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperToast;->setText(Ljava/lang/CharSequence;)V

    .line 720
    invoke-virtual {v0, p2}, Lcom/github/johnpersano/supertoasts/SuperToast;->setDuration(I)V

    .line 721
    invoke-direct {v0, p3}, Lcom/github/johnpersano/supertoasts/SuperToast;->setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V

    .line 723
    return-object v0
.end method

.method private getAnimation()I
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FLYIN:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v0, v1, :cond_0

    .line 634
    const v0, 0x1030003

    .line 646
    :goto_0
    return v0

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->SCALE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v0, v1, :cond_1

    .line 638
    const v0, 0x1030002

    goto :goto_0

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->POPUP:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    if-ne v0, v1, :cond_2

    .line 642
    const v0, 0x1030056

    goto :goto_0

    .line 646
    :cond_2
    const v0, 0x1030004

    goto :goto_0
.end method

.method private setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V
    .locals 1
    .param p1, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    .line 657
    iget-object v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->animations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperToast;->setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V

    .line 658
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->typefaceStyle:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperToast;->setTypefaceStyle(I)V

    .line 659
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperToast;->setTextColor(I)V

    .line 660
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperToast;->setBackground(I)V

    .line 662
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 568
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->removeSuperToast(Lcom/github/johnpersano/supertoasts/SuperToast;)V

    .line 570
    return-void
.end method

.method public getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    return-object v0
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mBackground:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mDuration:I

    return v0
.end method

.method public getOnDismissListener()Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mOnDismissListener:Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mTypefaceStyle:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowManagerParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V
    .locals 0
    .param p1, "animations"    # Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 527
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mBackground:I

    .line 488
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 490
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    const/16 v2, 0x1194

    .line 422
    if-le p1, v2, :cond_0

    .line 424
    const-string v0, "SuperToast"

    const-string v1, "SuperToast - You should NEVER specify a duration greater than four and a half seconds for a SuperToast."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iput v2, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mDuration:I

    .line 434
    :goto_0
    return-void

    .line 430
    :cond_0
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mDuration:I

    goto :goto_0
.end method

.method public setGravity(III)V
    .locals 0
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .prologue
    .line 512
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mGravity:I

    .line 513
    iput p2, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mXOffset:I

    .line 514
    iput p3, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mYOffset:I

    .line 516
    return-void
.end method

.method public setIcon(ILcom/github/johnpersano/supertoasts/SuperToast$IconPosition;)V
    .locals 3
    .param p1, "iconResource"    # I
    .param p2, "iconPosition"    # Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .prologue
    const/4 v2, 0x0

    .line 455
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->BOTTOM:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 465
    :cond_2
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->RIGHT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 470
    :cond_3
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->TOP:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOnDismissListener(Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mOnDismissListener:Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;

    .line 550
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 402
    return-void
.end method

.method public setTypefaceStyle(I)V
    .locals 2
    .param p1, "typeface"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mTypefaceStyle:I

    .line 356
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 358
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 307
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 309
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 310
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 311
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 314
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 315
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperToast;->getAnimation()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 316
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 317
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mGravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 318
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mXOffset:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 319
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/github/johnpersano/supertoasts/SuperToast;->mYOffset:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 321
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperToast;->add(Lcom/github/johnpersano/supertoasts/SuperToast;)V

    .line 323
    return-void
.end method
