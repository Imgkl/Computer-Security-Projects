.class Lcom/eventgenie/android/activities/others/ProoferAppSelection$1;
.super Ljava/lang/Object;
.source "ProoferAppSelection.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/ProoferAppSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$1;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferAppSelection$1;->this$0:Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferAppSelection;->adapter:Lcom/eventgenie/android/adapters/other/ProoferAdapter;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->access$000(Lcom/eventgenie/android/activities/others/ProoferAppSelection;)Lcom/eventgenie/android/adapters/other/ProoferAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/other/ProoferAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 121
    return-void
.end method
