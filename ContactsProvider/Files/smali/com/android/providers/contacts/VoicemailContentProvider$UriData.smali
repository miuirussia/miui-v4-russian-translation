.class public Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
.super Ljava/lang/Object;
.source "VoicemailContentProvider.java"


# instance fields
.field private final ht:Ljava/lang/String;

.field private final hu:Lcom/android/providers/contacts/VoicemailUriType;

.field private final mId:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hu:Lcom/android/providers/contacts/VoicemailUriType;

    .line 174
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUri:Landroid/net/Uri;

    .line 175
    iput-object p3, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    .line 176
    iput-object p4, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->ht:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private static cx()Lcom/android/providers/contacts/util/TypedUriMatcherImpl;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;

    const-string v1, "com.android.voicemail"

    invoke-static {}, Lcom/android/providers/contacts/VoicemailUriType;->values()[Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;-><init>(Ljava/lang/String;[Lcom/android/providers/contacts/util/UriType;)V

    return-object v0
.end method

.method public static g(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 5
    .parameter

    .prologue
    .line 219
    const-string v0, "source_package"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 222
    invoke-static {}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->cx()Lcom/android/providers/contacts/util/TypedUriMatcherImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->j(Landroid/net/Uri;)Lcom/android/providers/contacts/util/UriType;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/VoicemailUriType;

    .line 223
    sget-object v2, Lcom/android/providers/contacts/VoicemailContentProvider$1;->rd:[I

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible, all cases are covered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_0
    new-instance v1, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;-><init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 229
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v2, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;-><init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 231
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final cu()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->ht:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cv()Lcom/android/providers/contacts/VoicemailUriType;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hu:Lcom/android/providers/contacts/VoicemailUriType;

    return-object v0
.end method

.method public final cw()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 211
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->cu()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "source_package"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourcePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->ht:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final hasId()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
