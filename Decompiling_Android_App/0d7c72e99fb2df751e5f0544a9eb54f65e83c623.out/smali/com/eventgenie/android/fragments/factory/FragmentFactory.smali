.class public Lcom/eventgenie/android/fragments/factory/FragmentFactory;
.super Ljava/lang/Object;
.source "FragmentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentForElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "config"    # Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
