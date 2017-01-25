.class public Lcom/github/ignition/core/dialogs/IgnitedDialogs;
.super Ljava/lang/Object;
.source "IgnitedDialogs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newErrorDialog(Landroid/app/Activity;ILjava/lang/Exception;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "titleId"    # I
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/github/ignition/core/dialogs/IgnitedDialogs;->newErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Exception;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Exception;)Landroid/app/AlertDialog$Builder;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 148
    const-string v1, ""

    .line 149
    .local v1, "screenMessage":Ljava/lang/String;
    instance-of v2, p2, Lcom/github/ignition/core/exceptions/ResourceMessageException;

    if-eqz v2, :cond_0

    .line 150
    check-cast p2, Lcom/github/ignition/core/exceptions/ResourceMessageException;

    .end local p2    # "error":Ljava/lang/Exception;
    invoke-interface {p2}, Lcom/github/ignition/core/exceptions/ResourceMessageException;->getClientMessageResourceId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 159
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 161
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/github/ignition/core/dialogs/IgnitedDialogs$3;

    invoke-direct {v3}, Lcom/github/ignition/core/dialogs/IgnitedDialogs$3;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 169
    return-object v0

    .line 153
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local p2    # "error":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static newErrorHandlerDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/Exception;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "titleId"    # I
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "error"    # Ljava/lang/Exception;

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/github/ignition/core/dialogs/IgnitedDialogs;->newErrorHandlerDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newErrorHandlerDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Landroid/app/AlertDialog$Builder;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "error"    # Ljava/lang/Exception;

    .prologue
    .line 200
    invoke-static {p0, p1, p3}, Lcom/github/ignition/core/dialogs/IgnitedDialogs;->newErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Exception;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 202
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "android.intent.action.SEND"

    const-string v6, "message/rfc822"

    invoke-static {p0, v5, v6}, Lcom/github/ignition/support/IgnitedIntents;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    const v5, 0x7f020001

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "buttonText":Ljava/lang/String;
    const/high16 v5, 0x7f020000

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "bugReportEmailSubject":Ljava/lang/String;
    invoke-static {p0, p3}, Lcom/github/ignition/support/IgnitedDiagnostics;->createDiagnosis(Landroid/app/Activity;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "diagnosis":Ljava/lang/String;
    invoke-static {p0, p2, v0, v3}, Lcom/github/ignition/support/IgnitedIntents;->newEmailIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 210
    .local v4, "intent":Landroid/content/Intent;
    new-instance v5, Lcom/github/ignition/core/dialogs/IgnitedDialogs$4;

    invoke-direct {v5, p0, v4}, Lcom/github/ignition/core/dialogs/IgnitedDialogs$4;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    .end local v0    # "bugReportEmailSubject":Ljava/lang/String;
    .end local v2    # "buttonText":Ljava/lang/String;
    .end local v3    # "diagnosis":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method public static newListDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/github/ignition/core/dialogs/DialogClickListener;Z)Landroid/app/AlertDialog$Builder;
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p4, "closeOnSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/github/ignition/core/dialogs/DialogClickListener",
            "<TT;>;Z)",
            "Landroid/app/AlertDialog$Builder;"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "listener":Lcom/github/ignition/core/dialogs/DialogClickListener;, "Lcom/github/ignition/core/dialogs/DialogClickListener<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/github/ignition/core/dialogs/IgnitedDialogs;->newListDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/github/ignition/core/dialogs/DialogClickListener;ZI)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newListDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/github/ignition/core/dialogs/DialogClickListener;ZI)Landroid/app/AlertDialog$Builder;
    .locals 5
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p4, "closeOnSelect"    # Z
    .param p5, "selectedItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/github/ignition/core/dialogs/DialogClickListener",
            "<TT;>;ZI)",
            "Landroid/app/AlertDialog$Builder;"
        }
    .end annotation

    .prologue
    .line 255
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "listener":Lcom/github/ignition/core/dialogs/DialogClickListener;, "Lcom/github/ignition/core/dialogs/DialogClickListener<TT;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 256
    .local v2, "entriesSize":I
    new-array v1, v2, [Ljava/lang/String;

    .line 257
    .local v1, "entries":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 258
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 265
    :cond_1
    new-instance v4, Lcom/github/ignition/core/dialogs/IgnitedDialogs$5;

    invoke-direct {v4, p4, p3, p2}, Lcom/github/ignition/core/dialogs/IgnitedDialogs$5;-><init>(ZLcom/github/ignition/core/dialogs/DialogClickListener;Ljava/util/List;)V

    invoke-virtual {v0, v1, p5, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 276
    return-object v0
.end method

.method public static newMessageDialog(Landroid/content/Context;III)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "iconId"    # I

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lcom/github/ignition/core/dialogs/IgnitedDialogs;->newMessageDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newMessageDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 125
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/ignition/core/dialogs/IgnitedDialogs$2;

    invoke-direct {v2}, Lcom/github/ignition/core/dialogs/IgnitedDialogs$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 137
    return-object v0
.end method

.method public static newProgressDialog(Landroid/app/Activity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, -0x1

    .line 79
    invoke-static {p0, v0, v0}, Lcom/github/ignition/core/dialogs/IgnitedDialogs;->newProgressDialog(Landroid/app/Activity;II)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newProgressDialog(Landroid/app/Activity;II)Landroid/app/ProgressDialog;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "progressDialogTitleId"    # I
    .param p2, "progressDialogMsgId"    # I

    .prologue
    .line 52
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    if-gtz p1, :cond_0

    .line 54
    const p1, 0x7f020002

    .line 56
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 57
    if-gtz p2, :cond_1

    .line 58
    const p2, 0x7f020003

    .line 60
    :cond_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 62
    new-instance v1, Lcom/github/ignition/core/dialogs/IgnitedDialogs$1;

    invoke-direct {v1, p0}, Lcom/github/ignition/core/dialogs/IgnitedDialogs$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 69
    return-object v0
.end method

.method public static newYesNoDialog(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "iconId"    # I
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p3, p4}, Lcom/github/ignition/core/dialogs/IgnitedDialogs;->newYesNoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newYesNoDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 96
    const v1, 0x1040013

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v1, 0x1040009

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 103
    return-object v0
.end method
