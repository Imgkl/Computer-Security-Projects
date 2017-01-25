.class public Lcom/julysystems/appx/AppXHotButton;
.super Landroid/widget/LinearLayout;
.source "AppXHotButton.java"

# interfaces
.implements Lcom/julysystems/appx/AppXDataRequestListener;
.implements Lcom/julysystems/appx/AppXRegistrationListner;


# static fields
.field private static final TAG:Ljava/lang/String; = "APPX_HOTBUTTON"


# instance fields
.field private activity:Landroid/app/Activity;

.field private appXTag:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

.field private mainLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    .line 19
    iput-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->activity:Landroid/app/Activity;

    .line 21
    iput-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->appXTag:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    .line 19
    iput-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->activity:Landroid/app/Activity;

    .line 21
    iput-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->appXTag:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/julysystems/appx/AppX;->isAppXSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iput-object p1, p0, Lcom/julysystems/appx/AppXHotButton;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/julysystems/appx/AppXHotButton;->appXTag:Ljava/lang/String;

    .line 32
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 33
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->activity:Landroid/app/Activity;

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/julysystems/appx/AppXUtils;->initConstants(Landroid/content/Context;)V

    .line 35
    invoke-static {p1}, Lcom/julysystems/appx/AppX;->isRegistered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p1, p2, p0, p0}, Lcom/julysystems/appx/AppXUtils;->loadView(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;Lcom/julysystems/appx/AppXRegistrationListner;)V

    .line 42
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {p0}, Lcom/julysystems/appx/AppXRegistrationBackgroundRequest;->addUpdateListener(Lcom/julysystems/appx/AppXRegistrationListner;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "APPX_HOTBUTTON"

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

.method public static enableDebugLog(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/julysystems/appx/AppX;->enableLogs:Z

    .line 134
    return-void
.end method


# virtual methods
.method protected onDisplayHint(I)V
    .locals 3
    .param p1, "hint"    # I

    .prologue
    .line 107
    const-string v0, "APPX_HOTBUTTON"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisplayHint "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->activity:Landroid/app/Activity;

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 110
    :cond_0
    return-void
.end method

.method public onRegistrationSuccess()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/julysystems/appx/AppXHotButton;->appXTag:Ljava/lang/String;

    invoke-static {v0, v1, p0, p0}, Lcom/julysystems/appx/AppXUtils;->loadView(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;Lcom/julysystems/appx/AppXRegistrationListner;)V

    .line 139
    return-void
.end method

.method public onRequestComplete(Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageData;Z)V
    .locals 18
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "pageData"    # Lcom/julysystems/appx/AppXPageData;
    .param p3, "isRefreshRequest"    # Z

    .prologue
    .line 63
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXHotButton;->context:Landroid/content/Context;

    invoke-direct {v14, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    .line 64
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    const-string v14, "view"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/julysystems/appx/AppXXMLUtils;->getChildElements(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 68
    .local v7, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXHotButton;->context:Landroid/content/Context;

    if-nez v14, :cond_0

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/julysystems/appx/AppXHotButton;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/julysystems/appx/AppXHotButton;->context:Landroid/content/Context;

    .line 70
    :cond_0
    if-eqz p3, :cond_1

    .line 71
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_3

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/julysystems/appx/AppXHotButton;->addView(Landroid/view/View;)V

    .line 103
    return-void

    .line 72
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 73
    .local v10, "viewNode":Lorg/w3c/dom/Element;
    const-string v15, "name"

    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "attributeName":Ljava/lang/String;
    const-string v15, "hot_button"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 76
    :try_start_0
    invoke-static {v10}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "hotbuttonText":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v8, "nodeTextObj":Lorg/json/JSONObject;
    const-string v15, "Layout"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 79
    .local v5, "layoutObj":Lorg/json/JSONObject;
    const-string v15, "xPos"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 80
    .local v12, "xPos":Ljava/lang/String;
    const-string v15, "yPos"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 81
    .local v13, "yPos":Ljava/lang/String;
    const-string v15, "width"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, "width":Ljava/lang/String;
    const-string v15, "height"

    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "height":Ljava/lang/String;
    new-instance v9, Lcom/julysystems/appx/AppXHotButtonView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXHotButton;->context:Landroid/content/Context;

    invoke-direct {v9, v15, v4}, Lcom/julysystems/appx/AppXHotButtonView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .local v9, "view":Landroid/view/View;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v6, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 86
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 87
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 89
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXHotButton;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    if-eqz v15, :cond_2

    .line 93
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXHotButton;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXHotButton;->mainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/julysystems/appx/AppXViewListner;->onFinishLoading(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 95
    .end local v3    # "height":Ljava/lang/String;
    .end local v4    # "hotbuttonText":Ljava/lang/String;
    .end local v5    # "layoutObj":Lorg/json/JSONObject;
    .end local v6    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "nodeTextObj":Lorg/json/JSONObject;
    .end local v9    # "view":Landroid/view/View;
    .end local v11    # "width":Ljava/lang/String;
    .end local v12    # "xPos":Ljava/lang/String;
    .end local v13    # "yPos":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Lorg/json/JSONException;
    const-string v15, "APPX_HOTBUTTON"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v15, "APPX_HOTBUTTON"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onRequestFailure()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    iget-object v1, p0, Lcom/julysystems/appx/AppXHotButton;->appXTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Request Failure"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/julysystems/appx/AppXViewListner;->onFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    const-string v0, "APPX_HOTBUTTON"

    const-string v1, "onWindowFocusChanged. Has focus"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->activity:Landroid/app/Activity;

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, "APPX_HOTBUTTON"

    const-string v1, "onWindowFocusChanged. Does not have focus"

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 124
    const-string v0, "APPX_HOTBUTTON"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowVisibilityChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-nez p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->activity:Landroid/app/Activity;

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->currentActivity:Landroid/app/Activity;

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/julysystems/appx/AppXUtils;->prevUrl:Ljava/lang/String;

    .line 129
    :cond_0
    return-void
.end method

.method public refresh(Z)V
    .locals 3
    .param p1, "ignoreCache"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lcom/julysystems/appx/AppXHotButton;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/julysystems/appx/AppXHotButton;->appXTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, p1, v2}, Lcom/julysystems/appx/AppXUtils;->loadContent(Landroid/content/Context;Ljava/lang/String;Lcom/julysystems/appx/AppXDataRequestListener;ZZ)V

    .line 59
    return-void
.end method

.method public setAppXViewListner(Lcom/julysystems/appx/AppXViewListner;)V
    .locals 0
    .param p1, "listner"    # Lcom/julysystems/appx/AppXViewListner;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/julysystems/appx/AppXHotButton;->mAppXViewListner:Lcom/julysystems/appx/AppXViewListner;

    .line 48
    return-void
.end method
