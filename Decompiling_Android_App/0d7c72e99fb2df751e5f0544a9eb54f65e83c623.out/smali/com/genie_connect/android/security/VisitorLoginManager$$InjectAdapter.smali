.class public final Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "VisitorLoginManager$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/genie_connect/android/security/VisitorLoginManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/genie_connect/android/security/VisitorLoginManager;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/genie_connect/android/security/VisitorLoginManager;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private datastore:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/db/datastore/Datastore;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/genie_connect/android/security/BaseLoginManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "com.genie_connect.android.security.VisitorLoginManager"

    const-string v1, "members/com.genie_connect.android.security.VisitorLoginManager"

    const/4 v2, 0x1

    const-class v3, Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 40
    const-string v0, "@javax.inject.Named(value=appContext)/android.content.Context"

    const-class v1, Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->context:Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.genie_connect.android.db.datastore.Datastore"

    const-class v1, Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->datastore:Ldagger/internal/Binding;

    .line 42
    const-string v1, "members/com.genie_connect.android.security.BaseLoginManager"

    const-class v2, Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 43
    return-void
.end method

.method public get()Lcom/genie_connect/android/security/VisitorLoginManager;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/genie_connect/android/security/VisitorLoginManager;

    iget-object v1, p0, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->datastore:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/security/VisitorLoginManager;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/datastore/Datastore;)V

    .line 63
    .local v0, "result":Lcom/genie_connect/android/security/VisitorLoginManager;
    invoke-virtual {p0, v0}, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/security/VisitorLoginManager;)V

    .line 64
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->get()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->datastore:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public injectMembers(Lcom/genie_connect/android/security/VisitorLoginManager;)V
    .locals 1
    .param p1, "object"    # Lcom/genie_connect/android/security/VisitorLoginManager;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/genie_connect/android/security/VisitorLoginManager;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/security/VisitorLoginManager$$InjectAdapter;->injectMembers(Lcom/genie_connect/android/security/VisitorLoginManager;)V

    return-void
.end method
