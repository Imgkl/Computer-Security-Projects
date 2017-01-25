.class public Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;
.super Ljava/lang/Object;
.source "SearchCategoryEntity.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;->mId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;->mValue:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;->mId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;->mValue:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
