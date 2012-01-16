.class public final Lcom/google/common/collect/ImmutableSetMultimap$Builder;
.super Lcom/google/common/collect/ImmutableMultimap$Builder;
.source "ImmutableSetMultimap.java"


# instance fields
.field private final qq:Lcom/google/common/collect/Multimap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;-><init>()V

    .line 173
    new-instance v0, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->qq:Lcom/google/common/collect/Multimap;

    .line 179
    return-void
.end method
