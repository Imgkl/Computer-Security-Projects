.class Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$1;
.super Ljava/lang/Object;
.source "ProoferSelectDataversionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$1;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity$1;->this$0:Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;

    # getter for: Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->mAdapter:Lcom/eventgenie/android/adapters/entity/DataversionAdapter;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;->access$000(Lcom/eventgenie/android/activities/others/ProoferSelectDataversionActivity;)Lcom/eventgenie/android/adapters/entity/DataversionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/entity/DataversionAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 107
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 111
    return-void
.end method
