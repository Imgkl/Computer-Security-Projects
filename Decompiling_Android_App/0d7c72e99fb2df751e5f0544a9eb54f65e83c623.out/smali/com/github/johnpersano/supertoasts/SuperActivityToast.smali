.class public Lcom/github/johnpersano/supertoasts/SuperActivityToast;
.super Ljava/lang/Object;
.source "SuperActivityToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;
    }
.end annotation


# static fields
.field private static final BUNDLE_TAG:Ljava/lang/String; = "0x532e412e542e"

.field private static final ERROR_ACTIVITYNULL:Ljava/lang/String; = " - You cannot pass a null Activity as a parameter."

.field private static final ERROR_NOTBUTTONTYPE:Ljava/lang/String; = " - is only compatible with BUTTON type SuperActivityToasts."

.field private static final ERROR_NOTEITHERPROGRESSTYPE:Ljava/lang/String; = " - is only compatible with PROGRESS_HORIZONTAL or PROGRESS type SuperActivityToasts."

.field private static final ERROR_NOTPROGRESSHORIZONTALTYPE:Ljava/lang/String; = " - is only compatible with PROGRESS_HORIZONTAL type SuperActivityToasts."

.field private static final MANAGER_TAG:Ljava/lang/String; = "SuperActivityToast Manager"

.field private static final TAG:Ljava/lang/String; = "SuperActivityToast"


# instance fields
.field private isProgressIndeterminate:Z

.field private mActivity:Landroid/app/Activity;

.field private mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

.field private mBackground:I

.field private mButton:Landroid/widget/Button;

.field private mButtonIcon:I

.field private mButtonListener:Landroid/view/View$OnClickListener;

.field private mButtonTypefaceStyle:I

.field private mDividerColor:I

.field private mDividerView:Landroid/view/View;

.field private mDuration:I

.field private mIcon:I

.field private mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

.field private mIsIndeterminate:Z

.field private mIsTouchDismissible:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mOnClickWrapper:Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

.field private mOnClickWrapperTag:Ljava/lang/String;

.field private mOnDismissWrapper:Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

.field private mOnDismissWrapperTag:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mToastView:Landroid/view/View;

.field private mToken:Landroid/os/Parcelable;

.field private mTouchDismissListener:Landroid/view/View$OnTouchListener;

.field private mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

.field private mTypefaceStyle:I

.field private mViewGroup:Landroid/view/ViewGroup;

.field private showImmediate:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 70
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDuration:I

    .line 71
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mBackground:I

    .line 72
    sget v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 73
    const v0, -0x333334

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 75
    iput v3, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 86
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1477
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1504
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$2;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$2;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 98
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperActivityToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 106
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 109
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supertoast:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 121
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;Lcom/github/johnpersano/supertoasts/util/Wrappers;I)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "referenceHolder"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;
    .param p3, "wrappers"    # Lcom/github/johnpersano/supertoasts/util/Wrappers;
    .param p4, "position"    # I

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x1

    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v6, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v6, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 70
    const/16 v6, 0x7d0

    iput v6, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDuration:I

    .line 71
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v6

    iput v6, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mBackground:I

    .line 72
    sget v6, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v6, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 73
    const v6, -0x333334

    iput v6, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 75
    const/4 v6, 0x0

    iput v6, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 76
    iput v8, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 86
    sget-object v6, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v6, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1477
    new-instance v6, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;

    invoke-direct {v6, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    iput-object v6, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1504
    new-instance v6, Lcom/github/johnpersano/supertoasts/SuperActivityToast$2;

    invoke-direct {v6, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$2;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    iput-object v6, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 1380
    iget-object v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v7, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v6, v7, :cond_2

    .line 1382
    new-instance v5, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    sget-object v6, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    invoke-direct {v5, p1, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperToast$Type;)V

    .line 1383
    .local v5, "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    iget-object v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setButtonText(Ljava/lang/CharSequence;)V

    .line 1384
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextSize:F

    invoke-direct {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setButtonTextSizeFloat(F)V

    .line 1385
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextColor:I

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setButtonTextColor(I)V

    .line 1386
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonIcon:I

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setButtonIcon(I)V

    .line 1387
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDivider:I

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setDividerColor(I)V

    .line 1388
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTypefaceStyle:I

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setButtonTypefaceStyle(I)V

    .line 1390
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v6, 0xf

    .line 1394
    .local v4, "screenSize":I
    const/4 v6, 0x3

    if-lt v4, v6, :cond_0

    .line 1396
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1399
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x55

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1400
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/github/johnpersano/supertoasts/R$dimen;->buttontoast_hover:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1401
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/github/johnpersano/supertoasts/R$dimen;->buttontoast_x_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1402
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/github/johnpersano/supertoasts/R$dimen;->buttontoast_x_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1404
    invoke-direct {v5}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1409
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    if-eqz p3, :cond_5

    .line 1411
    invoke-virtual {p3}, Lcom/github/johnpersano/supertoasts/util/Wrappers;->getOnClickWrappers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    .line 1413
    .local v2, "onClickWrapper":Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
    invoke-virtual {v2}, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1415
    iget-object v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    invoke-virtual {v5, v2, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setOnClickWrapper(Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1422
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "onClickWrapper":Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
    .end local v4    # "screenSize":I
    .end local v5    # "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    :cond_2
    iget-object v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v7, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v6, v7, :cond_4

    .line 1474
    :cond_3
    :goto_1
    return-void

    .line 1428
    :cond_4
    iget-object v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v7, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v6, v7, :cond_3

    .line 1436
    new-instance v5, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    invoke-direct {v5, p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;)V

    .line 1441
    .restart local v5    # "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    :cond_5
    if-eqz p3, :cond_7

    .line 1443
    invoke-virtual {p3}, Lcom/github/johnpersano/supertoasts/util/Wrappers;->getOnDismissWrappers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    .line 1445
    .local v3, "onDismissWrapper":Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;
    invoke-virtual {v3}, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;->getTag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1447
    invoke-virtual {v5, v3}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setOnDismissWrapper(Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;)V

    goto :goto_2

    .line 1454
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "onDismissWrapper":Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;
    :cond_7
    iget-object v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V

    .line 1455
    iget-object v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTypefaceStyle:I

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setTypefaceStyle(I)V

    .line 1457
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mDuration:I

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setDuration(I)V

    .line 1458
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTextColor:I

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setTextColor(I)V

    .line 1459
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mTextSize:F

    invoke-direct {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setTextSizeFloat(F)V

    .line 1460
    iget-boolean v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIsIndeterminate:Z

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setIndeterminate(Z)V

    .line 1461
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIcon:I

    iget-object v7, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v5, v6, v7}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setIcon(ILcom/github/johnpersano/supertoasts/SuperToast$IconPosition;)V

    .line 1462
    iget v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mBackground:I

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setBackground(I)V

    .line 1463
    iget-boolean v6, p2, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;->mIsTouchDismissible:Z

    invoke-virtual {v5, v6}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setTouchToDismiss(Z)V

    .line 1466
    if-ne p4, v8, :cond_8

    .line 1468
    invoke-virtual {v5, v8}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setShowImmediate(Z)V

    .line 1472
    :cond_8
    invoke-virtual {v5}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->show()V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperToast$Type;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 70
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDuration:I

    .line 71
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mBackground:I

    .line 72
    sget v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 73
    const v0, -0x333334

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 75
    iput v3, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 86
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1477
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1504
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$2;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$2;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 166
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperActivityToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 173
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 175
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 178
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 181
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supertoast:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 217
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 223
    return-void

    .line 186
    :cond_2
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->superactivitytoast_button:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerView:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 199
    :cond_3
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->superactivitytoast_progresscircle:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    .line 207
    :cond_4
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->superactivitytoast_progresshorizontal:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperToast$Type;Lcom/github/johnpersano/supertoasts/util/Style;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/github/johnpersano/supertoasts/SuperToast$Type;
    .param p3, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    const/4 v3, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 70
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDuration:I

    .line 71
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mBackground:I

    .line 72
    sget v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 73
    const v0, -0x333334

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 75
    iput v3, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 86
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1477
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1504
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$2;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$2;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 234
    if-nez p1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperActivityToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 241
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 243
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 246
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 249
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supertoast:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 285
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 291
    invoke-direct {p0, p3}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V

    .line 293
    return-void

    .line 254
    :cond_2
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->superactivitytoast_button:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    .line 262
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerView:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 267
    :cond_3
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->superactivitytoast_progresscircle:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    .line 275
    :cond_4
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->superactivitytoast_progresshorizontal:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/util/Style;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 70
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDuration:I

    .line 71
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mBackground:I

    .line 72
    sget v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 73
    const v0, -0x333334

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 75
    iput v3, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 86
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->STANDARD:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    .line 1477
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1504
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$2;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$2;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 131
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperActivityToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 139
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 142
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 145
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/github/johnpersano/supertoasts/R$layout;->supertoast:I

    iget-object v2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    sget v1, Lcom/github/johnpersano/supertoasts/R$id;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 154
    invoke-direct {p0, p2}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mOnClickWrapper:Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToken:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getOnClickWrapperTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getToken()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->getOnDismissWrapperTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cancelAllSuperActivityToasts()V
    .locals 1

    .prologue
    .line 1267
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->cancelAllSuperActivityToasts()V

    .line 1269
    return-void
.end method

.method public static clearSuperActivityToastsForActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1279
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->cancelAllSuperActivityToastsForActivity(Landroid/app/Activity;)V

    .line 1282
    return-void
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I

    .prologue
    .line 1212
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;)V

    .line 1213
    .local v0, "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    invoke-virtual {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    invoke-virtual {v0, p2}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setDuration(I)V

    .line 1216
    return-object v0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;ILcom/github/johnpersano/supertoasts/SuperToast$Animations;)Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "animations"    # Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .prologue
    .line 1232
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;)V

    .line 1233
    .local v0, "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    invoke-virtual {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    invoke-virtual {v0, p2}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setDuration(I)V

    .line 1235
    invoke-virtual {v0, p3}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V

    .line 1237
    return-object v0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;ILcom/github/johnpersano/supertoasts/util/Style;)Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    .line 1253
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    invoke-direct {v0, p0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;)V

    .line 1254
    .local v0, "superActivityToast":Lcom/github/johnpersano/supertoasts/SuperActivityToast;
    invoke-virtual {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    invoke-virtual {v0, p2}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setDuration(I)V

    .line 1256
    invoke-direct {v0, p3}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V

    .line 1258
    return-object v0
.end method

.method private getOnClickWrapperTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mOnClickWrapperTag:Ljava/lang/String;

    return-object v0
.end method

.method private getOnDismissWrapperTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mOnDismissWrapperTag:Ljava/lang/String;

    return-object v0
.end method

.method private getRootLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getToken()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToken:Landroid/os/Parcelable;

    return-object v0
.end method

.method public static onRestoreState(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1317
    if-nez p0, :cond_1

    .line 1338
    :cond_0
    return-void

    .line 1322
    :cond_1
    const-string v6, "0x532e412e542e"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 1324
    .local v5, "savedArray":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 1326
    .local v1, "i":I
    if-eqz v5, :cond_0

    .line 1328
    move-object v0, v5

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1330
    .local v4, "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v1, v1, 0x1

    .line 1332
    new-instance v6, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    check-cast v4, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;

    .end local v4    # "parcelable":Landroid/os/Parcelable;
    const/4 v7, 0x0

    invoke-direct {v6, p1, v4, v7, v1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;Lcom/github/johnpersano/supertoasts/util/Wrappers;I)V

    .line 1328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static onRestoreState(Landroid/os/Bundle;Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/util/Wrappers;)V
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "wrappers"    # Lcom/github/johnpersano/supertoasts/util/Wrappers;

    .prologue
    .line 1350
    if-nez p0, :cond_1

    .line 1371
    :cond_0
    return-void

    .line 1355
    :cond_1
    const-string v6, "0x532e412e542e"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 1357
    .local v5, "savedArray":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 1359
    .local v1, "i":I
    if-eqz v5, :cond_0

    .line 1361
    move-object v0, v5

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1363
    .local v4, "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v1, v1, 0x1

    .line 1365
    new-instance v6, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    check-cast v4, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;

    .end local v4    # "parcelable":Landroid/os/Parcelable;
    invoke-direct {v6, p1, v4, p2, v1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;Lcom/github/johnpersano/supertoasts/util/Wrappers;I)V

    .line 1361
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static onSaveState(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1291
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v1, v3, [Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;

    .line 1294
    .local v1, "list":[Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getList()Ljava/util/LinkedList;

    move-result-object v2

    .line 1297
    .local v2, "lister":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/github/johnpersano/supertoasts/SuperActivityToast;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1299
    new-instance v4, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    invoke-direct {v4, v3}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;-><init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    aput-object v4, v1, v0

    .line 1297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1303
    :cond_0
    const-string v3, "0x532e412e542e"

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1305
    invoke-static {}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->cancelAllSuperActivityToasts()V

    .line 1307
    return-void
.end method

.method private setButtonTextSizeFloat(F)V
    .locals 2
    .param p1, "buttonTextSize"    # F

    .prologue
    .line 966
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 968
    return-void
.end method

.method private setStyle(Lcom/github/johnpersano/supertoasts/util/Style;)V
    .locals 2
    .param p1, "style"    # Lcom/github/johnpersano/supertoasts/util/Style;

    .prologue
    .line 1187
    iget-object v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->animations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V

    .line 1188
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->typefaceStyle:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setTypefaceStyle(I)V

    .line 1189
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->textColor:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setTextColor(I)V

    .line 1190
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->background:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setBackground(I)V

    .line 1192
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-ne v0, v1, :cond_0

    .line 1194
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->dividerColor:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setDividerColor(I)V

    .line 1195
    iget v0, p1, Lcom/github/johnpersano/supertoasts/util/Style;->buttonTextColor:I

    invoke-virtual {p0, v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->setButtonTextColor(I)V

    .line 1199
    :cond_0
    return-void
.end method

.method private setTextSizeFloat(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 401
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 403
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 650
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->removeSuperToast(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    .line 652
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAnimations()Lcom/github/johnpersano/supertoasts/SuperToast$Animations;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    return-object v0
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mBackground:I

    return v0
.end method

.method public getButtonIcon()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonIcon:I

    return v0
.end method

.method public getButtonText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 853
    :goto_0
    return-object v0

    .line 851
    :cond_0
    const-string v0, "SuperActivityToast"

    const-string v1, "getButtonText() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v0, ""

    goto :goto_0
.end method

.method public getButtonTextColor()I
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v0

    .line 933
    :goto_0
    return v0

    .line 931
    :cond_0
    const-string v0, "SuperActivityToast"

    const-string v1, "getButtonTextColor() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonTextSize()F
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    .line 986
    :goto_0
    return v0

    .line 984
    :cond_0
    const-string v0, "SuperActivityToast"

    const-string v1, "getButtonTextSize() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonTypefaceStyle()I
    .locals 1

    .prologue
    .line 891
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerColor:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDuration:I

    return v0
.end method

.method public getIconPosition()Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mIcon:I

    return v0
.end method

.method public getMaxProgress()I
    .locals 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 1074
    :goto_0
    return v0

    .line 1072
    :cond_0
    const-string v0, "SuperActivityToast"

    const-string v1, "getMaxProgress() - is only compatible with PROGRESS_HORIZONTAL type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOnDismissWrapper()Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mOnDismissWrapper:Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 1030
    :goto_0
    return v0

    .line 1028
    :cond_0
    const-string v0, "SuperActivityToast"

    const-string v1, "getProgress() - is only compatible with PROGRESS_HORIZONTAL type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressIndeterminate()Z
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->isProgressIndeterminate:Z

    return v0
.end method

.method public getShowImmediate()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->showImmediate:Z

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getType()Lcom/github/johnpersano/supertoasts/SuperToast$Type;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mIsIndeterminate:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

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

.method public isTouchDismissible()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mIsTouchDismissible:Z

    return v0
.end method

.method public setAnimations(Lcom/github/johnpersano/supertoasts/SuperToast$Animations;)V
    .locals 0
    .param p1, "animations"    # Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mAnimations:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 550
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 524
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mBackground:I

    .line 526
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 528
    return-void
.end method

.method public setButtonIcon(I)V
    .locals 3
    .param p1, "buttonIcon"    # I

    .prologue
    const/4 v2, 0x0

    .line 722
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 724
    const-string v0, "SuperActivityToast"

    const-string v1, "setButtonIcon() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 730
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 737
    :cond_1
    return-void
.end method

.method public setButtonIcon(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "buttonIcon"    # I
    .param p2, "buttonText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 748
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 750
    const-string v0, "SuperActivityToast"

    const-string v1, "setButtonIcon() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 756
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 761
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 765
    :cond_1
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "buttonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 825
    const-string v0, "SuperActivityToast"

    const-string v1, "setButtonText() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 835
    :cond_1
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 2
    .param p1, "buttonTextColor"    # I

    .prologue
    .line 903
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 905
    const-string v0, "SuperActivityToast"

    const-string v1, "setButtonTextColor() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 915
    :cond_1
    return-void
.end method

.method public setButtonTextSize(I)V
    .locals 2
    .param p1, "buttonTextSize"    # I

    .prologue
    .line 947
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 949
    const-string v0, "SuperActivityToast"

    const-string v1, "setButtonTextSize() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 959
    :cond_1
    return-void
.end method

.method public setButtonTypefaceStyle(I)V
    .locals 2
    .param p1, "typefaceStyle"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 869
    const-string v0, "SuperActivityToast"

    const-string v1, "setButtonTypefaceStyle() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 875
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 877
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 881
    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 2
    .param p1, "dividerColor"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 789
    const-string v0, "SuperActivityToast"

    const-string v1, "setDivider() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 795
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 801
    :cond_1
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 423
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mDuration:I

    .line 425
    return-void
.end method

.method public setIcon(ILcom/github/johnpersano/supertoasts/SuperToast$IconPosition;)V
    .locals 3
    .param p1, "iconResource"    # I
    .param p2, "iconPosition"    # Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .prologue
    const/4 v2, 0x0

    .line 468
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mIcon:I

    .line 469
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mIconPosition:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .line 471
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->BOTTOM:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 481
    :cond_2
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->RIGHT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_3

    .line 483
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 486
    :cond_3
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->TOP:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 0
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mIsIndeterminate:Z

    .line 447
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 2
    .param p1, "maxProgress"    # I

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1046
    const-string v0, "SuperActivityToast"

    const-string v1, "setMaxProgress() - is only compatible with PROGRESS_HORIZONTAL type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1056
    :cond_1
    return-void
.end method

.method public setOnClickWrapper(Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;)V
    .locals 2
    .param p1, "onClickWrapper"    # Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 664
    const-string v0, "SuperActivityToast"

    const-string v1, "setOnClickListenerWrapper() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mOnClickWrapper:Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    .line 669
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mOnClickWrapperTag:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public setOnClickWrapper(Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "onClickWrapper"    # Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
    .param p2, "token"    # Landroid/os/Parcelable;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->BUTTON:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 684
    const-string v0, "SuperActivityToast"

    const-string v1, "setOnClickListenerWrapper() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    invoke-virtual {p1, p2}, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->setToken(Landroid/os/Parcelable;)V

    .line 690
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToken:Landroid/os/Parcelable;

    .line 691
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mOnClickWrapper:Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    .line 692
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mOnClickWrapperTag:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public setOnDismissWrapper(Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;)V
    .locals 1
    .param p1, "onDismissWrapper"    # Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mOnDismissWrapper:Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    .line 623
    invoke-virtual {p1}, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mOnDismissWrapperTag:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1002
    const-string v0, "SuperActivityToast"

    const-string v1, "setProgress() - is only compatible with PROGRESS_HORIZONTAL type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1012
    :cond_1
    return-void
.end method

.method public setProgressIndeterminate(Z)V
    .locals 2
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mType:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Type;->PROGRESS:Lcom/github/johnpersano/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1090
    const-string v0, "SuperActivityToast"

    const-string v1, "setProgressIndeterminate() - is only compatible with PROGRESS_HORIZONTAL or PROGRESS type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_0
    iput-boolean p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->isProgressIndeterminate:Z

    .line 1096
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1102
    :cond_1
    return-void
.end method

.method public setShowImmediate(Z)V
    .locals 0
    .param p1, "showImmediate"    # Z

    .prologue
    .line 570
    iput-boolean p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->showImmediate:Z

    .line 571
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 394
    return-void
.end method

.method public setTouchToDismiss(Z)V
    .locals 2
    .param p1, "touchDismiss"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mIsTouchDismissible:Z

    .line 593
    if-eqz p1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 603
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setTypefaceStyle(I)V
    .locals 2
    .param p1, "typeface"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 348
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 350
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/github/johnpersano/supertoasts/ManagerSuperActivityToast;->add(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V

    .line 304
    return-void
.end method
