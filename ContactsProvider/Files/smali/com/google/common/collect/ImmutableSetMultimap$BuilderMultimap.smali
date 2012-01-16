.class Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "ImmutableSetMultimap.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMultimap;-><init>(Ljava/util/Map;)V

    .line 148
    return-void
.end method


# virtual methods
.method J()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/google/common/collect/Sets;->p()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method
