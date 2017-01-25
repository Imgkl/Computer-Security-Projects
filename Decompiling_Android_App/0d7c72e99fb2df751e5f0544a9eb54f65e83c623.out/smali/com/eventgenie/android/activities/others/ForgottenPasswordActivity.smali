.class public Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;
.super Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;
.source "ForgottenPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$ForgottenPasswordTask;
    }
.end annotation


# instance fields
.field private mBtnLogin:Landroid/widget/Button;

.field private mEditPassword:Landroid/widget/EditText;

.field private mEditUsername:Landroid/widget/EditText;

.field private mServerSpinner:Landroid/widget/Spinner;

.field private mTvForgotPassword:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mBtnLogin:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->getMessageToDisplay(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMessageToDisplay(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)Ljava/lang/String;
    .locals 4
    .param p0, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    .line 179
    .local v0, "json":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-nez v0, :cond_0

    .line 180
    const-string v1, ""

    .line 185
    .local v1, "methodResult":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 182
    .end local v1    # "methodResult":Ljava/lang/String;
    :cond_0
    const-string v2, "message"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "methodResult":Ljava/lang/String;
    goto :goto_0
.end method

.method private setTextViewHint(ILjava/lang/String;)V
    .locals 2
    .param p1, "tvId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    .local v0, "t":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 151
    .end local v0    # "t":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private setTextViewLabel(ILjava/lang/String;)V
    .locals 2
    .param p1, "tvId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    .local v0, "t":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .end local v0    # "t":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private validateInput()Z
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mEditUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "uname":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 164
    sget v1, Lcom/eventgenie/android/R$string;->login_invalid_username:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mEditUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 168
    const/4 v1, 0x0

    .line 171
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 68
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget v2, Lcom/eventgenie/android/R$layout;->activity_login:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->setContentView(I)V

    .line 70
    sget v2, Lcom/eventgenie/android/R$id;->headerLogin:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, "headerLogin":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->headerGuestLogin:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "headerGuestLogin":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->password:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mEditPassword:Landroid/widget/EditText;

    .line 74
    sget v2, Lcom/eventgenie/android/R$id;->username:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mEditUsername:Landroid/widget/EditText;

    .line 77
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mEditUsername:Landroid/widget/EditText;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 79
    sget v2, Lcom/eventgenie/android/R$id;->forgot_password:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mTvForgotPassword:Landroid/widget/TextView;

    .line 80
    sget v2, Lcom/eventgenie/android/R$id;->server_spinner:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mServerSpinner:Landroid/widget/Spinner;

    .line 81
    sget v2, Lcom/eventgenie/android/R$id;->login_button:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mBtnLogin:Landroid/widget/Button;

    .line 84
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mServerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 85
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mTvForgotPassword:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mEditPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 87
    sget v2, Lcom/eventgenie/android/R$id;->show_password:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-static {v1, v4, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 90
    invoke-static {v0, v4, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 93
    sget v2, Lcom/eventgenie/android/R$id;->label_signin:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Label;->FORGOTTEN_PASSWORD:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->setTextViewLabel(ILjava/lang/String;)V

    .line 94
    sget v2, Lcom/eventgenie/android/R$id;->username:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Label;->USERNAME:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->setTextViewHint(ILjava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->title_forgotten_password:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(I[Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mBtnLogin:Landroid/widget/Button;

    sget v3, Lcom/eventgenie/android/R$string;->send:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 99
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mEditUsername:Landroid/widget/EditText;

    new-instance v3, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$1;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$1;-><init>(Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 106
    return-void
.end method

.method public onGuestLoginClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    return-void
.end method

.method public onLoginClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->validateInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 117
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mBtnLogin:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    new-instance v0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;->mEditUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$2;-><init>(Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method
