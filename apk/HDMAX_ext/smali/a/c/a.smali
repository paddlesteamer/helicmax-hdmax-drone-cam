.class public La/c/a;
.super La/c/h;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La/c/h<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public i:La/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/g<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, La/c/h;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, La/c/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()La/c/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/c/g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La/c/a;->i:La/c/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/c/a$a;

    invoke-direct {v0, p0}, La/c/a$a;-><init>(La/c/a;)V

    iput-object v0, p0, La/c/a;->i:La/c/g;

    .line 3
    :cond_0
    iget-object v0, p0, La/c/a;->i:La/c/g;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La/c/a;->b()La/c/g;

    move-result-object v0

    .line 2
    iget-object v1, v0, La/c/g;->a:La/c/g$b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, La/c/g$b;

    invoke-direct {v1, v0}, La/c/g$b;-><init>(La/c/g;)V

    iput-object v1, v0, La/c/g;->a:La/c/g$b;

    .line 4
    :cond_0
    iget-object v0, v0, La/c/g;->a:La/c/g$b;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La/c/a;->b()La/c/g;

    move-result-object v0

    .line 2
    iget-object v1, v0, La/c/g;->b:La/c/g$c;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, La/c/g$c;

    invoke-direct {v1, v0}, La/c/g$c;-><init>(La/c/g;)V

    iput-object v1, v0, La/c/g;->b:La/c/g$c;

    .line 4
    :cond_0
    iget-object v0, v0, La/c/g;->b:La/c/g$c;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, La/c/h;->d:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 2
    iget v0, p0, La/c/h;->d:I

    .line 3
    iget-object v2, p0, La/c/h;->b:[I

    array-length v3, v2

    if-ge v3, v1, :cond_1

    .line 4
    iget-object v3, p0, La/c/h;->c:[Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v1}, La/c/h;->a(I)V

    .line 6
    iget v1, p0, La/c/h;->d:I

    if-lez v1, :cond_0

    .line 7
    iget-object v1, p0, La/c/h;->b:[I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v1, p0, La/c/h;->c:[Ljava/lang/Object;

    shl-int/lit8 v5, v0, 0x1

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_0
    invoke-static {v2, v3, v0}, La/c/h;->a([I[Ljava/lang/Object;I)V

    .line 10
    :cond_1
    iget v1, p0, La/c/h;->d:I

    if-ne v1, v0, :cond_3

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, La/c/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La/c/a;->b()La/c/g;

    move-result-object v0

    .line 2
    iget-object v1, v0, La/c/g;->c:La/c/g$e;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, La/c/g$e;

    invoke-direct {v1, v0}, La/c/g$e;-><init>(La/c/g;)V

    iput-object v1, v0, La/c/g;->c:La/c/g$e;

    .line 4
    :cond_0
    iget-object v0, v0, La/c/g;->c:La/c/g$e;

    return-object v0
.end method
