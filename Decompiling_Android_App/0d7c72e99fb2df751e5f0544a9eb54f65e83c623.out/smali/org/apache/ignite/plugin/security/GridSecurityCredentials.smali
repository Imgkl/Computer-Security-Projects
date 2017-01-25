.class public Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
.super Ljava/lang/Object;
.source "GridSecurityCredentials.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x24db166f12d764f0L


# instance fields
.field private login:Ljava/lang/Object;

.field private password:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private userObj:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->login:Ljava/lang/Object;

    .line 72
    iput-object p2, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->password:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userObj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->login:Ljava/lang/Object;

    .line 85
    iput-object p2, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->password:Ljava/lang/Object;

    .line 86
    iput-object p3, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->userObj:Ljava/lang/Object;

    .line 87
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    if-ne p0, p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    if-nez v3, :cond_2

    move v1, v2

    .line 163
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 165
    check-cast v0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    .line 167
    .local v0, "that":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    iget-object v3, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->login:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->login:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->password:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->password:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->userObj:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->userObj:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getLogin()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->login:Ljava/lang/Object;

    return-object v0
.end method

.method public getPassword()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->password:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->userObj:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v2, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->login:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->login:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 174
    .local v0, "res":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->password:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->password:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 175
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->userObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 177
    return v0

    .end local v0    # "res":I
    :cond_1
    move v0, v1

    .line 172
    goto :goto_0

    .restart local v0    # "res":I
    :cond_2
    move v2, v1

    .line 174
    goto :goto_1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->login:Ljava/lang/Object;

    .line 153
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->password:Ljava/lang/Object;

    .line 154
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->userObj:Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public setLogin(Ljava/lang/Object;)V
    .locals 0
    .param p1, "login"    # Ljava/lang/Object;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->login:Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public setPassword(Ljava/lang/Object;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/Object;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->password:Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userObj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    iput-object p1, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->userObj:Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-class v0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->login:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->password:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentials;->userObj:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 148
    return-void
.end method
