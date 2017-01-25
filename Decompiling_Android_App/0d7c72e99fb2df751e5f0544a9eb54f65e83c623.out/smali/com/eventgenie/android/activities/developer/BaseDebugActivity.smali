.class public abstract Lcom/eventgenie/android/activities/developer/BaseDebugActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "BaseDebugActivity.java"


# static fields
.field protected static final EMAIL_SUBJECT_PREFIX:Ljava/lang/String; = "GenieConnect Android Tester Report - "

.field protected static final MESSAGE_TESTS_COMPLETED:Ljava/lang/String; = "Tests completed! Please send the pre-populated email!"

.field protected static final MESSAGE_THERE_WAS_AN_ERROR:Ljava/lang/String; = "ERROR: There was an error while collecting the information.\n Please try again..."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onStartTestClick(Landroid/view/View;)V
.end method

.method protected sentEmail(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "to"    # [Ljava/lang/String;
    .param p4, "attachmentPath"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-static {p4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    :cond_0
    const-string v1, "Send Email"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/developer/BaseDebugActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected showOfflineDialog()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Device Offline"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    const-string v1, "You are currently offline.\nPlease make sure that your device is connecte to a network and try again."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 72
    const-string v1, "Settings"

    new-instance v2, Lcom/eventgenie/android/activities/developer/BaseDebugActivity$1;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/developer/BaseDebugActivity$1;-><init>(Lcom/eventgenie/android/activities/developer/BaseDebugActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    const-string v1, "Dismiss"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 86
    return-void
.end method
