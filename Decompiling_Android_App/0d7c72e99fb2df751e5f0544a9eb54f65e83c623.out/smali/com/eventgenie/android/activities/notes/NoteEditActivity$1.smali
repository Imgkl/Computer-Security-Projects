.class Lcom/eventgenie/android/activities/notes/NoteEditActivity$1;
.super Ljava/lang/Object;
.source "NoteEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/notes/NoteEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/notes/NoteEditActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/notes/NoteEditActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity$1;->this$0:Lcom/eventgenie/android/activities/notes/NoteEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity$1;->this$0:Lcom/eventgenie/android/activities/notes/NoteEditActivity;

    const/4 v1, 0x0

    # setter for: Lcom/eventgenie/android/activities/notes/NoteEditActivity;->mIsNoteSavedAlready:Z
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->access$002(Lcom/eventgenie/android/activities/notes/NoteEditActivity;Z)Z

    .line 192
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 185
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 187
    return-void
.end method
