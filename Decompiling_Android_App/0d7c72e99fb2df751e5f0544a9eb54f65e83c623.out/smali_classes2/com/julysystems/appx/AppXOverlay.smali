.class public Lcom/julysystems/appx/AppXOverlay;
.super Landroid/widget/PopupWindow;
.source "AppXOverlay.java"

# interfaces
.implements Lcom/julysystems/appx/AppXDataRequestListener;
.implements Lcom/julysystems/appx/AppXRegistrationListner;
.implements Lcom/julysystems/appx/AppXViewUpdateListner;


# static fields
.field private static final TAG:Ljava/lang/String; = "APPXPOPUP"

.field private static overLayTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closeButtonDrawableID:I

.field private contentLayout:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field private mAppXOverlayUpdateListner:Lcom/julysystems/appx/AppXOverlayUpdateListner;

.field private mainLayout:Landroid/widget/LinearLayout;

.field protected overLayCounter:I

.field private showAlways:Z

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXOverlay;->overLayTagList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    .line 29
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    .line 32
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXOverlay;->showAlways:Z

    .line 33
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    .line 29
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    .line 32
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXOverlay;->showAlways:Z

    .line 33
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    .line 49
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/julysystems/appx/AppXOverlay;->initOverlay(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "closeButtonDrawableID"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v1, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    .line 29
    iput-object v1, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    .line 32
    iput-boolean v0, p0, Lcom/julysystems/appx/AppXOverlay;->showAlways:Z

    .line 33
    iput-object v1, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    .line 35
    iput v0, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/julysystems/appx/AppXOverlay;->initOverlay(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "closeButtonDrawableID"    # I
    .param p4, "showAlways"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    .line 29
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    .line 32
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXOverlay;->showAlways:Z

    .line 33
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/julysystems/appx/AppXOverlay;->initOverlay(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "showAlways"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    .line 29
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    .line 32
    iput-boolean v1, p0, Lcom/julysystems/appx/AppXOverlay;->showAlways:Z

    .line 33
    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    .line 59
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/julysystems/appx/AppXOverlay;->initOverlay(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 60
    return-void
.end method

.method public static enableDebugLog(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 232
    sput-boolean p0, Lcom/julysystems/appx/AppX;->enableLogs:Z

    .line 233
    return-void
.end method

.method private initOverlay(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "closeButtonDrawableID"    # I
    .param p4, "showAlways"    # Z

    .prologue
    .line 63
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXOverlay;->setWidth(I)V

    .line 65
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXOverlay;->setHeight(I)V

    .line 66
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXOverlay;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/julysystems/appx/AppXOverlay;->initOverlayConstants(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    iput p3, p0, Lcom/julysystems/appx/AppXOverlay;->closeButtonDrawableID:I

    .line 69
    iput-boolean p4, p0, Lcom/julysystems/appx/AppXOverlay;->showAlways:Z

    .line 70
    invoke-static {p1}, Lcom/julysystems/appx/AppX;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcom/julysystems/appx/AppX;->updateAppXTagMap()V

    .line 72
    invoke-static {p0}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->addUpdateListener(Lcom/julysystems/appx/AppXRegistrationListner;)V

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->addUpdateListener(Lcom/julysystems/appx/AppXRegistrationListner;)V

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "APPXPOPUP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APPX Not Supported for the version ::::: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initOverlayConstants(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    iput-object p2, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    .line 94
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXOverlay;->setFocusable(Z)V

    .line 95
    sget-object v1, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/julysystems/appx/AppX;

    invoke-direct {v1}, Lcom/julysystems/appx/AppX;-><init>()V

    sput-object v1, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    .line 97
    :cond_0
    sput-object p1, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    .line 98
    const/4 v1, 0x0

    sput-object v1, Lcom/julysystems/appx/AppXUtils;->prevUrl:Ljava/lang/String;

    .line 99
    sget-boolean v1, Lcom/julysystems/appx/AppX;->enableCaching:Z

    sput-boolean v1, Lcom/julysystems/appx/AppXConstants;->isCachingEnabled:Z

    .line 100
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 101
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    sput-object p1, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 103
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXOverlay;->setOutsideTouchable(Z)V

    .line 104
    const-class v1, Lcom/julysystems/appx/AppXPageActivity;

    sput-object v1, Lcom/julysystems/appx/AppXConstants;->customActivity:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception for Overlay Adding "

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadAppXOverLay()V
    .locals 15

    .prologue
    .line 111
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 112
    iget-boolean v11, p0, Lcom/julysystems/appx/AppXOverlay;->showAlways:Z

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/julysystems/appx/AppXOverlay;->showAlways:Z

    if-nez v11, :cond_2

    sget-object v11, Lcom/julysystems/appx/AppXOverlay;->overLayTagList:Ljava/util/List;

    iget-object v12, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 114
    .local v0, "appXViewUrl":Ljava/lang/String;
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    const-string v12, "http://"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 115
    sget-object v11, Lcom/julysystems/appx/AppXOverlay;->overLayTagList:Ljava/util/List;

    iget-object v12, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    invoke-static {v11}, Lcom/julysystems/appx/AppXUtils;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "baseUrlStr":Ljava/lang/String;
    sput-object v1, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    .line 133
    .end local v1    # "baseUrlStr":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v10, Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 134
    .local v10, "wrapperLayout":Landroid/widget/RelativeLayout;
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const/4 v11, 0x5

    const/16 v12, 0x14

    const/4 v13, 0x5

    const/16 v14, 0x14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 136
    new-instance v11, Lcom/julysystems/appx/AppXRoundClippingLinearLayout;

    iget-object v12, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/julysystems/appx/AppXRoundClippingLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    .line 137
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v9, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v9, "mainLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 140
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 142
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    .line 143
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 148
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v8, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v8, "mLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xb

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    const/16 v11, 0xa

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    iget v11, p0, Lcom/julysystems/appx/AppXOverlay;->closeButtonDrawableID:I

    if-lez v11, :cond_5

    .line 155
    new-instance v7, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    invoke-direct {v7, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 156
    .local v7, "mImage":Landroid/widget/ImageView;
    iget v11, p0, Lcom/julysystems/appx/AppXOverlay;->closeButtonDrawableID:I

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    new-instance v11, Lcom/julysystems/appx/AppXOverlay$1;

    invoke-direct {v11, p0}, Lcom/julysystems/appx/AppXOverlay$1;-><init>(Lcom/julysystems/appx/AppXOverlay;)V

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v10, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .end local v7    # "mImage":Landroid/widget/ImageView;
    :goto_1
    invoke-virtual {p0, v10}, Lcom/julysystems/appx/AppXOverlay;->setContentView(Landroid/view/View;)V

    .line 192
    if-eqz v0, :cond_2

    const-string v11, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 193
    invoke-direct {p0, v0}, Lcom/julysystems/appx/AppXOverlay;->loadContent(Ljava/lang/String;)V

    .line 196
    .end local v0    # "appXViewUrl":Ljava/lang/String;
    .end local v8    # "mLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "mainLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "wrapperLayout":Landroid/widget/RelativeLayout;
    :cond_2
    return-void

    .line 120
    .restart local v0    # "appXViewUrl":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/julysystems/appx/AppX;->updateAppXTagMap()V

    .line 121
    sget-object v11, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 122
    sget-object v11, Lcom/julysystems/appx/AppXOverlay;->overLayTagList:Ljava/util/List;

    iget-object v12, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v11, Lcom/julysystems/appx/AppX;->urlTagMap:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/julysystems/appx/AppXOverlay;->tag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appXViewUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 124
    .restart local v0    # "appXViewUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v11, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 125
    invoke-static {v0}, Lcom/julysystems/appx/AppXUtils;->getDomainUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1    # "baseUrlStr":Ljava/lang/String;
    sput-object v1, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 129
    .end local v1    # "baseUrlStr":Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/julysystems/appx/AppX;->isRegistered(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 130
    invoke-static {p0}, Lcom/julysystems/appx/AppXDownloadBackgroundTask;->addUpdateListener(Lcom/julysystems/appx/AppXRegistrationListner;)V

    goto/16 :goto_0

    .line 167
    .restart local v8    # "mLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9    # "mainLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v10    # "wrapperLayout":Landroid/widget/RelativeLayout;
    :cond_5
    :try_start_0
    new-instance v6, Landroid/widget/Button;

    iget-object v11, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    invoke-direct {v6, v11}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 168
    .local v6, "mButton":Landroid/widget/Button;
    const/16 v11, 0x1e

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setWidth(I)V

    .line 169
    const/16 v11, 0x1e

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setHeight(I)V

    .line 170
    const/16 v11, 0x35

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setGravity(I)V

    .line 171
    const/4 v11, 0x0

    const/16 v12, -0xa

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/widget/Button;->setPadding(IIII)V

    .line 173
    new-instance v3, Lcom/julysystems/appx/AppXOverlayCloseButton;

    invoke-direct {v3, v6}, Lcom/julysystems/appx/AppXOverlayCloseButton;-><init>(Landroid/widget/Button;)V

    .line 174
    .local v3, "drawable":Lcom/julysystems/appx/AppXOverlayCloseButton;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6}, Landroid/widget/Button;->getWidth()I

    move-result v13

    invoke-virtual {v6}, Landroid/widget/Button;->getHeight()I

    move-result v14

    invoke-virtual {v3, v11, v12, v13, v14}, Lcom/julysystems/appx/AppXOverlayCloseButton;->setBounds(IIII)V

    .line 175
    const/4 v11, 0x1

    new-array v2, v11, [Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    aput-object v3, v2, v11

    .line 176
    .local v2, "d":[Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 177
    .local v5, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    new-instance v11, Lcom/julysystems/appx/AppXOverlay$2;

    invoke-direct {v11, p0}, Lcom/julysystems/appx/AppXOverlay$2;-><init>(Lcom/julysystems/appx/AppXOverlay;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {v10, v6, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 186
    .end local v2    # "d":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "drawable":Lcom/julysystems/appx/AppXOverlayCloseButton;
    .end local v5    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v6    # "mButton":Landroid/widget/Button;
    :catch_0
    move-exception v4

    .line 187
    .local v4, "e":Ljava/lang/Exception;
    const-string v11, "Exception for Overlay showoverlay "

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private loadContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 204
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    invoke-static {p1}, Lcom/julysystems/appx/AppXUtils;->getCorrectedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    iget-object v1, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 207
    sget-object v1, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    .line 208
    :cond_0
    new-instance v0, Lcom/julysystems/appx/AppXDataRequest;

    iget-object v1, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    const/16 v2, 0xb4

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/julysystems/appx/AppXDataRequest;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/julysystems/appx/AppXBaseActivity;)V

    .line 209
    .local v0, "dataRequest":Lcom/julysystems/appx/AppXDataRequest;
    invoke-virtual {v0, p0}, Lcom/julysystems/appx/AppXDataRequest;->setOnDataRefreshListener(Lcom/julysystems/appx/AppXDataRequestListener;)V

    .line 210
    invoke-static {v0}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 212
    .end local v0    # "dataRequest":Lcom/julysystems/appx/AppXDataRequest;
    :cond_1
    return-void
.end method

.method private showOverlay()V
    .locals 8

    .prologue
    .line 268
    iget v5, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    if-nez v5, :cond_0

    .line 270
    const/4 v2, 0x0

    .line 271
    .local v2, "activity":Landroid/app/Activity;
    :try_start_0
    iget-object v5, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 272
    iget-object v5, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    .line 276
    :goto_0
    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 277
    const v5, 0x1020002

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    const v5, 0x1020002

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 278
    .local v4, "root":Landroid/view/View;
    :goto_1
    if-eqz v4, :cond_0

    .line 279
    new-instance v5, Lcom/julysystems/appx/AppXOverlay$3;

    invoke-direct {v5, p0, v4}, Lcom/julysystems/appx/AppXOverlay$3;-><init>(Lcom/julysystems/appx/AppXOverlay;Landroid/view/View;)V

    .line 283
    const-wide/16 v6, 0x7d0

    .line 279
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v4    # "root":Landroid/view/View;
    :cond_0
    :goto_2
    return-void

    .line 274
    .restart local v2    # "activity":Landroid/app/Activity;
    :cond_1
    sget-object v2, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    goto :goto_0

    .line 277
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 286
    :cond_3
    const-string v5, "App X Overlay"

    const-string v6, "Overlay can\'t be displayed, because the related activity is no longer visible"

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 288
    :catch_0
    move-exception v3

    .line 289
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Exception for Overlay showoverlay "

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getmAppXOverlayUpdateListner()Lcom/julysystems/appx/AppXOverlayUpdateListner;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->mAppXOverlayUpdateListner:Lcom/julysystems/appx/AppXOverlayUpdateListner;

    return-object v0
.end method

.method public onRegistrationSuccess()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/julysystems/appx/AppXOverlay;->loadAppXOverLay()V

    .line 238
    return-void
.end method

.method public onRequestComplete(Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Z)V
    .locals 9
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .param p3, "isRefreshRequest"    # Z

    .prologue
    .line 216
    const-string v0, "view"

    invoke-static {p1, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChildElements(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 217
    .local v6, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    iget-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    .line 219
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    invoke-direct {p0}, Lcom/julysystems/appx/AppXOverlay;->showOverlay()V

    .line 229
    return-void

    .line 219
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 220
    .local v2, "viewNode":Lorg/w3c/dom/Element;
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    iget-object v1, p0, Lcom/julysystems/appx/AppXOverlay;->context:Landroid/content/Context;

    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/julysystems/appx/AppX;->getComponent(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Lcom/julysystems/appx/AppXPageActivity;Lcom/julysystems/appx/AppXViewUpdateListner;)Landroid/view/View;

    move-result-object v7

    .line 221
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 222
    instance-of v0, v7, Lcom/julysystems/appx/AppXWebView;

    if-eqz v0, :cond_3

    .line 223
    iget v0, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/julysystems/appx/AppXOverlay;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    const-string v0, "APPXPOPUP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "APPX OverLay Added View is ::::: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRequestFailure()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onViewFailedToLoad()V
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    .line 264
    invoke-direct {p0}, Lcom/julysystems/appx/AppXOverlay;->showOverlay()V

    .line 265
    return-void
.end method

.method public onViewFinishedLoading()V
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/julysystems/appx/AppXOverlay;->overLayCounter:I

    .line 258
    invoke-direct {p0}, Lcom/julysystems/appx/AppXOverlay;->showOverlay()V

    .line 259
    return-void
.end method

.method public setmAppXOverlayUpdateListner(Lcom/julysystems/appx/AppXOverlayUpdateListner;)V
    .locals 0
    .param p1, "mAppXOverlayUpdateListner"    # Lcom/julysystems/appx/AppXOverlayUpdateListner;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/julysystems/appx/AppXOverlay;->mAppXOverlayUpdateListner:Lcom/julysystems/appx/AppXOverlayUpdateListner;

    .line 253
    return-void
.end method
