.class final Lcom/google/common/base/CharMatcher$10;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic sF:C

.field final synthetic sG:C


# direct methods
.method constructor <init>(CC)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 432
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$10;->sF:C

    iput-char p2, p0, Lcom/google/common/base/CharMatcher$10;->sG:C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 434
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->sF:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->sG:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 432
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
