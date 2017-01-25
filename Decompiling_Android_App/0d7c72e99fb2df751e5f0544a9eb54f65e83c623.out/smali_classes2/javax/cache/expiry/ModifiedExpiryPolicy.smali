.class public final Ljavax/cache/expiry/ModifiedExpiryPolicy;
.super Ljava/lang/Object;
.source "ModifiedExpiryPolicy.java"

# interfaces
.implements Ljavax/cache/expiry/ExpiryPolicy;
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x2edeb81522L


# instance fields
.field private expiryDuration:Ljavax/cache/expiry/Duration;


# direct methods
.method public constructor <init>(Ljavax/cache/expiry/Duration;)V
    .locals 0
    .param p1, "expiryDuration"    # Ljavax/cache/expiry/Duration;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ljavax/cache/expiry/ModifiedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    .line 37
    return-void
.end method

.method public static factoryOf(Ljavax/cache/expiry/Duration;)Ljavax/cache/configuration/Factory;
    .locals 2
    .param p0, "duration"    # Ljavax/cache/expiry/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/expiry/Duration;",
            ")",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;

    new-instance v1, Ljavax/cache/expiry/ModifiedExpiryPolicy;

    invoke-direct {v1, p0}, Ljavax/cache/expiry/ModifiedExpiryPolicy;-><init>(Ljavax/cache/expiry/Duration;)V

    invoke-direct {v0, v1}, Ljavax/cache/configuration/FactoryBuilder$SingletonFactory;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-ne p0, p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 95
    goto :goto_0

    .line 97
    :cond_2
    instance-of v3, p1, Ljavax/cache/expiry/ModifiedExpiryPolicy;

    if-nez v3, :cond_3

    move v1, v2

    .line 98
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 100
    check-cast v0, Ljavax/cache/expiry/ModifiedExpiryPolicy;

    .line 101
    .local v0, "other":Ljavax/cache/expiry/ModifiedExpiryPolicy;
    iget-object v3, p0, Ljavax/cache/expiry/ModifiedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    if-nez v3, :cond_4

    .line 102
    iget-object v3, v0, Ljavax/cache/expiry/ModifiedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    if-eqz v3, :cond_0

    move v1, v2

    .line 103
    goto :goto_0

    .line 105
    :cond_4
    iget-object v3, p0, Ljavax/cache/expiry/ModifiedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    iget-object v4, v0, Ljavax/cache/expiry/ModifiedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    invoke-virtual {v3, v4}, Ljavax/cache/expiry/Duration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public getExpiryForAccess()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpiryForCreation()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ljavax/cache/expiry/ModifiedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    return-object v0
.end method

.method public getExpiryForUpdate()Ljavax/cache/expiry/Duration;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljavax/cache/expiry/ModifiedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 80
    const/16 v0, 0x1f

    .line 81
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 82
    .local v1, "result":I
    iget-object v2, p0, Ljavax/cache/expiry/ModifiedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 83
    return v1

    .line 82
    :cond_0
    iget-object v2, p0, Ljavax/cache/expiry/ModifiedExpiryPolicy;->expiryDuration:Ljavax/cache/expiry/Duration;

    invoke-virtual {v2}, Ljavax/cache/expiry/Duration;->hashCode()I

    move-result v2

    goto :goto_0
.end method
