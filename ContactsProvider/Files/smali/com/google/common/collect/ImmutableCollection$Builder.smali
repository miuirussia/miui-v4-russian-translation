.class abstract Lcom/google/common/collect/ImmutableCollection$Builder;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 3
    .parameter

    .prologue
    .line 290
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 292
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableCollection$Builder;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-object p0
.end method

.method public abstract h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
.end method
