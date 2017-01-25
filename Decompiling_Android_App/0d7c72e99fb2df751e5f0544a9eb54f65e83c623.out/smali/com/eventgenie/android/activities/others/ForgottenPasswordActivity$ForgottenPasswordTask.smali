.class Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$ForgottenPasswordTask;
.super Landroid/os/AsyncTask;
.source "ForgottenPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForgottenPasswordTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$ForgottenPasswordTask;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$ForgottenPasswordTask;->mUserName:Ljava/lang/String;

    .line 195
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 199
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkSender;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$ForgottenPasswordTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkSender;
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$ForgottenPasswordTask;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkSender;->postResetMyPassword(Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/ForgottenPasswordActivity$ForgottenPasswordTask;->doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method
