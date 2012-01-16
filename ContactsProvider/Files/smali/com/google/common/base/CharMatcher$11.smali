.class final Lcom/google/common/base/CharMatcher$11;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic sE:[C


# direct methods
.method constructor <init>([C)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$11;->sE:[C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$11;->sE:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 449
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
