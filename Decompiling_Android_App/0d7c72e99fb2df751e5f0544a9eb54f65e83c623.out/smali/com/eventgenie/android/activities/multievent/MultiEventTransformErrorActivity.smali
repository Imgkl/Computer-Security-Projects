.class public Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;
.super Landroid/app/Activity;
.source "MultiEventTransformErrorActivity.java"


# static fields
.field public static final MESSAGE_TEXT_EXTRA:Ljava/lang/String; = "message_extra"

.field public static final REPORTABLE_EXTRA:Ljava/lang/String; = "reportable_extra"

.field public static final REPORT_CONTENT_EXTRA:Ljava/lang/String; = "reportable_extra"


# instance fields
.field mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 57
    const-string v2, "message_extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;->mMessage:Ljava/lang/String;

    .line 60
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "myAlertDialog":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity$1;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity$1;-><init>(Lcom/eventgenie/android/activities/multievent/MultiEventTransformErrorActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 74
    return-void
.end method
