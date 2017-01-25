.class Lcom/eventgenie/android/activities/notes/NoteEditActivity$2;
.super Ljava/lang/Object;
.source "NoteEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/notes/NoteEditActivity;->onCustomButton2Click(Landroid/view/View;)V
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
    .line 322
    iput-object p1, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity$2;->this$0:Lcom/eventgenie/android/activities/notes/NoteEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/eventgenie/android/activities/notes/NoteEditActivity$2;->this$0:Lcom/eventgenie/android/activities/notes/NoteEditActivity;

    # invokes: Lcom/eventgenie/android/activities/notes/NoteEditActivity;->discardNote()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/notes/NoteEditActivity;->access$100(Lcom/eventgenie/android/activities/notes/NoteEditActivity;)V

    .line 328
    return-void
.end method
