.class Lcom/eventgenie/android/activities/others/PreferencesActivity$2;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/PreferencesActivity;->doLoginPrefsStuff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$2;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$2;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->signout_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->signout_msg:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_ok:I

    new-instance v2, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$2;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$2;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_cancel:I

    new-instance v2, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$1;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$2$1;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 217
    const/4 v0, 0x1

    return v0
.end method
