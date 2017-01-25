.class public abstract Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;
.super Lcom/eventgenie/android/viewconfig/base/BaseViewConfiguration;
.source "TabbedViewConfiguration.java"


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/eventgenie/android/viewconfig/base/BaseViewConfiguration;-><init>(Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method
