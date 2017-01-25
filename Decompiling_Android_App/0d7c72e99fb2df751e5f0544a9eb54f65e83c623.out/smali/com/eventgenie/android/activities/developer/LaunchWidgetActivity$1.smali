.class Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity$1;
.super Ljava/lang/Object;
.source "LaunchWidgetActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/genie_connect/android/db/config/GenieMobileModule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity$1;->this$0:Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/genie_connect/android/db/config/GenieMobileModule;Lcom/genie_connect/android/db/config/GenieMobileModule;)I
    .locals 2
    .param p1, "lhs"    # Lcom/genie_connect/android/db/config/GenieMobileModule;
    .param p2, "rhs"    # Lcom/genie_connect/android/db/config/GenieMobileModule;

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/GenieWidget;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getWidget()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/genie_connect/android/db/config/GenieMobileModule;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/developer/LaunchWidgetActivity$1;->compare(Lcom/genie_connect/android/db/config/GenieMobileModule;Lcom/genie_connect/android/db/config/GenieMobileModule;)I

    move-result v0

    return v0
.end method
