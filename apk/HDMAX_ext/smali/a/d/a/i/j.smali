.class public La/d/a/i/j;
.super La/d/a/i/l;
.source "ResolutionAnchor.java"


# instance fields
.field public c:La/d/a/i/c;

.field public d:La/d/a/i/j;

.field public e:F

.field public f:La/d/a/i/j;

.field public g:F

.field public h:I

.field public i:La/d/a/i/j;

.field public j:La/d/a/i/k;

.field public k:I

.field public l:La/d/a/i/k;

.field public m:I


# direct methods
.method public constructor <init>(La/d/a/i/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, La/d/a/i/l;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/d/a/i/j;->h:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, La/d/a/i/j;->j:La/d/a/i/k;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, La/d/a/i/j;->k:I

    .line 5
    iput-object v0, p0, La/d/a/i/j;->l:La/d/a/i/k;

    .line 6
    iput v1, p0, La/d/a/i/j;->m:I

    .line 7
    iput-object p1, p0, La/d/a/i/j;->c:La/d/a/i/c;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "DIRECT"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "CENTER"

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "MATCH"

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "CHAIN"

    return-object p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const-string p1, "BARRIER"

    return-object p1

    :cond_4
    const-string p1, "UNCONNECTED"

    return-object p1
.end method

.method public a(ILa/d/a/i/j;I)V
    .locals 0

    .line 7
    iput p1, p0, La/d/a/i/j;->h:I

    .line 8
    iput-object p2, p0, La/d/a/i/j;->d:La/d/a/i/j;

    int-to-float p1, p3

    .line 9
    iput p1, p0, La/d/a/i/j;->e:F

    .line 10
    iget-object p1, p0, La/d/a/i/j;->d:La/d/a/i/j;

    .line 11
    iget-object p1, p1, La/d/a/i/l;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(La/d/a/e;)V
    .locals 4

    .line 23
    iget-object v0, p0, La/d/a/i/j;->c:La/d/a/i/c;

    .line 24
    iget-object v0, v0, La/d/a/i/c;->i:La/d/a/h;

    .line 25
    iget-object v1, p0, La/d/a/i/j;->f:La/d/a/i/j;

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v1, :cond_0

    .line 26
    iget v1, p0, La/d/a/i/j;->g:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, La/d/a/e;->a(La/d/a/h;I)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, v1, La/d/a/i/j;->c:La/d/a/i/c;

    invoke-virtual {p1, v1}, La/d/a/e;->a(Ljava/lang/Object;)La/d/a/h;

    move-result-object v1

    .line 28
    iget v3, p0, La/d/a/i/j;->g:F

    add-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, La/d/a/e;->a(La/d/a/h;La/d/a/h;II)La/d/a/b;

    :goto_0
    return-void
.end method

.method public a(La/d/a/i/j;F)V
    .locals 1

    .line 1
    iget v0, p0, La/d/a/i/l;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/a/i/j;->f:La/d/a/i/j;

    if-eq v0, p1, :cond_2

    iget v0, p0, La/d/a/i/j;->g:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    iput-object p1, p0, La/d/a/i/j;->f:La/d/a/i/j;

    .line 3
    iput p2, p0, La/d/a/i/j;->g:F

    .line 4
    iget p1, p0, La/d/a/i/l;->b:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 5
    invoke-virtual {p0}, La/d/a/i/l;->b()V

    .line 6
    :cond_1
    invoke-virtual {p0}, La/d/a/i/l;->a()V

    :cond_2
    return-void
.end method

.method public a(La/d/a/i/j;I)V
    .locals 0

    .line 12
    iput-object p1, p0, La/d/a/i/j;->d:La/d/a/i/j;

    int-to-float p1, p2

    .line 13
    iput p1, p0, La/d/a/i/j;->e:F

    .line 14
    iget-object p1, p0, La/d/a/i/j;->d:La/d/a/i/j;

    .line 15
    iget-object p1, p1, La/d/a/i/l;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(La/d/a/i/j;ILa/d/a/i/k;)V
    .locals 0

    .line 16
    iput-object p1, p0, La/d/a/i/j;->d:La/d/a/i/j;

    .line 17
    iget-object p1, p0, La/d/a/i/j;->d:La/d/a/i/j;

    .line 18
    iget-object p1, p1, La/d/a/i/l;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    iput-object p3, p0, La/d/a/i/j;->j:La/d/a/i/k;

    .line 20
    iput p2, p0, La/d/a/i/j;->k:I

    .line 21
    iget-object p1, p0, La/d/a/i/j;->j:La/d/a/i/k;

    .line 22
    iget-object p1, p1, La/d/a/i/l;->a:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .locals 8

    .line 1
    iget v0, p0, La/d/a/i/l;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, La/d/a/i/j;->h:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, La/d/a/i/j;->j:La/d/a/i/k;

    if-eqz v0, :cond_3

    .line 4
    iget v2, v0, La/d/a/i/l;->b:I

    if-eq v2, v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget v2, p0, La/d/a/i/j;->k:I

    int-to-float v2, v2

    iget v0, v0, La/d/a/i/k;->c:F

    mul-float v2, v2, v0

    iput v2, p0, La/d/a/i/j;->e:F

    .line 6
    :cond_3
    iget-object v0, p0, La/d/a/i/j;->l:La/d/a/i/k;

    if-eqz v0, :cond_5

    .line 7
    iget v2, v0, La/d/a/i/l;->b:I

    if-eq v2, v1, :cond_4

    return-void

    .line 8
    :cond_4
    iget v0, v0, La/d/a/i/k;->c:F

    .line 9
    :cond_5
    iget v0, p0, La/d/a/i/j;->h:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, La/d/a/i/j;->d:La/d/a/i/j;

    if-eqz v0, :cond_6

    iget v0, v0, La/d/a/i/l;->b:I

    if-ne v0, v1, :cond_8

    .line 10
    :cond_6
    iget-object v0, p0, La/d/a/i/j;->d:La/d/a/i/j;

    if-nez v0, :cond_7

    .line 11
    iput-object p0, p0, La/d/a/i/j;->f:La/d/a/i/j;

    .line 12
    iget v0, p0, La/d/a/i/j;->e:F

    iput v0, p0, La/d/a/i/j;->g:F

    goto :goto_0

    .line 13
    :cond_7
    iget-object v1, v0, La/d/a/i/j;->f:La/d/a/i/j;

    iput-object v1, p0, La/d/a/i/j;->f:La/d/a/i/j;

    .line 14
    iget v0, v0, La/d/a/i/j;->g:F

    iget v1, p0, La/d/a/i/j;->e:F

    add-float/2addr v0, v1

    iput v0, p0, La/d/a/i/j;->g:F

    .line 15
    :goto_0
    invoke-virtual {p0}, La/d/a/i/l;->a()V

    goto/16 :goto_7

    .line 16
    :cond_8
    iget v0, p0, La/d/a/i/j;->h:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    iget-object v0, p0, La/d/a/i/j;->d:La/d/a/i/j;

    if-eqz v0, :cond_10

    iget v2, v0, La/d/a/i/l;->b:I

    if-ne v2, v1, :cond_10

    iget-object v2, p0, La/d/a/i/j;->i:La/d/a/i/j;

    if-eqz v2, :cond_10

    iget-object v3, v2, La/d/a/i/j;->d:La/d/a/i/j;

    if-eqz v3, :cond_10

    iget v4, v3, La/d/a/i/l;->b:I

    if-ne v4, v1, :cond_10

    .line 17
    iget-object v0, v0, La/d/a/i/j;->f:La/d/a/i/j;

    iput-object v0, p0, La/d/a/i/j;->f:La/d/a/i/j;

    .line 18
    iget-object v0, v3, La/d/a/i/j;->f:La/d/a/i/j;

    iput-object v0, v2, La/d/a/i/j;->f:La/d/a/i/j;

    .line 19
    iget-object v0, p0, La/d/a/i/j;->c:La/d/a/i/c;

    iget-object v0, v0, La/d/a/i/c;->c:La/d/a/i/c$c;

    sget-object v2, La/d/a/i/c$c;->e:La/d/a/i/c$c;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    sget-object v2, La/d/a/i/c$c;->f:La/d/a/i/c$c;

    if-ne v0, v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_1
    if-eqz v1, :cond_b

    .line 20
    iget-object v0, p0, La/d/a/i/j;->d:La/d/a/i/j;

    iget v0, v0, La/d/a/i/j;->g:F

    iget-object v2, p0, La/d/a/i/j;->i:La/d/a/i/j;

    iget-object v2, v2, La/d/a/i/j;->d:La/d/a/i/j;

    iget v2, v2, La/d/a/i/j;->g:F

    goto :goto_2

    .line 21
    :cond_b
    iget-object v0, p0, La/d/a/i/j;->i:La/d/a/i/j;

    iget-object v0, v0, La/d/a/i/j;->d:La/d/a/i/j;

    iget v0, v0, La/d/a/i/j;->g:F

    iget-object v2, p0, La/d/a/i/j;->d:La/d/a/i/j;

    iget v2, v2, La/d/a/i/j;->g:F

    :goto_2
    sub-float/2addr v0, v2

    .line 22
    iget-object v2, p0, La/d/a/i/j;->c:La/d/a/i/c;

    iget-object v4, v2, La/d/a/i/c;->c:La/d/a/i/c$c;

    sget-object v5, La/d/a/i/c$c;->c:La/d/a/i/c$c;

    if-eq v4, v5, :cond_d

    sget-object v5, La/d/a/i/c$c;->e:La/d/a/i/c$c;

    if-ne v4, v5, :cond_c

    goto :goto_3

    .line 23
    :cond_c
    iget-object v2, v2, La/d/a/i/c;->b:La/d/a/i/d;

    invoke-virtual {v2}, La/d/a/i/d;->c()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 24
    iget-object v2, p0, La/d/a/i/j;->c:La/d/a/i/c;

    iget-object v2, v2, La/d/a/i/c;->b:La/d/a/i/d;

    iget v2, v2, La/d/a/i/d;->W:F

    goto :goto_4

    .line 25
    :cond_d
    :goto_3
    iget-object v2, p0, La/d/a/i/j;->c:La/d/a/i/c;

    iget-object v2, v2, La/d/a/i/c;->b:La/d/a/i/d;

    invoke-virtual {v2}, La/d/a/i/d;->h()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 26
    iget-object v2, p0, La/d/a/i/j;->c:La/d/a/i/c;

    iget-object v2, v2, La/d/a/i/c;->b:La/d/a/i/d;

    iget v2, v2, La/d/a/i/d;->V:F

    .line 27
    :goto_4
    iget-object v4, p0, La/d/a/i/j;->c:La/d/a/i/c;

    invoke-virtual {v4}, La/d/a/i/c;->b()I

    move-result v4

    .line 28
    iget-object v5, p0, La/d/a/i/j;->i:La/d/a/i/j;

    iget-object v5, v5, La/d/a/i/j;->c:La/d/a/i/c;

    invoke-virtual {v5}, La/d/a/i/c;->b()I

    move-result v5

    .line 29
    iget-object v6, p0, La/d/a/i/j;->c:La/d/a/i/c;

    .line 30
    iget-object v6, v6, La/d/a/i/c;->d:La/d/a/i/c;

    .line 31
    iget-object v7, p0, La/d/a/i/j;->i:La/d/a/i/j;

    iget-object v7, v7, La/d/a/i/j;->c:La/d/a/i/c;

    .line 32
    iget-object v7, v7, La/d/a/i/c;->d:La/d/a/i/c;

    if-ne v6, v7, :cond_e

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    goto :goto_5

    :cond_e
    move v3, v4

    :goto_5
    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v4, v5

    sub-float/2addr v0, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_f

    .line 33
    iget-object v1, p0, La/d/a/i/j;->i:La/d/a/i/j;

    iget-object v6, v1, La/d/a/i/j;->d:La/d/a/i/j;

    iget v6, v6, La/d/a/i/j;->g:F

    add-float/2addr v6, v4

    mul-float v4, v0, v2

    add-float/2addr v4, v6

    iput v4, v1, La/d/a/i/j;->g:F

    .line 34
    iget-object v1, p0, La/d/a/i/j;->d:La/d/a/i/j;

    iget v1, v1, La/d/a/i/j;->g:F

    sub-float/2addr v1, v3

    sub-float/2addr v5, v2

    mul-float v5, v5, v0

    sub-float/2addr v1, v5

    iput v1, p0, La/d/a/i/j;->g:F

    goto :goto_6

    .line 35
    :cond_f
    iget-object v1, p0, La/d/a/i/j;->d:La/d/a/i/j;

    iget v1, v1, La/d/a/i/j;->g:F

    add-float/2addr v1, v3

    mul-float v3, v0, v2

    add-float/2addr v3, v1

    iput v3, p0, La/d/a/i/j;->g:F

    .line 36
    iget-object v1, p0, La/d/a/i/j;->i:La/d/a/i/j;

    iget-object v3, v1, La/d/a/i/j;->d:La/d/a/i/j;

    iget v3, v3, La/d/a/i/j;->g:F

    sub-float/2addr v3, v4

    sub-float/2addr v5, v2

    mul-float v5, v5, v0

    sub-float/2addr v3, v5

    iput v3, v1, La/d/a/i/j;->g:F

    .line 37
    :goto_6
    invoke-virtual {p0}, La/d/a/i/l;->a()V

    .line 38
    iget-object v0, p0, La/d/a/i/j;->i:La/d/a/i/j;

    invoke-virtual {v0}, La/d/a/i/l;->a()V

    goto :goto_7

    .line 39
    :cond_10
    iget v0, p0, La/d/a/i/j;->h:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_11

    iget-object v0, p0, La/d/a/i/j;->d:La/d/a/i/j;

    if-eqz v0, :cond_11

    iget v2, v0, La/d/a/i/l;->b:I

    if-ne v2, v1, :cond_11

    iget-object v2, p0, La/d/a/i/j;->i:La/d/a/i/j;

    if-eqz v2, :cond_11

    iget-object v3, v2, La/d/a/i/j;->d:La/d/a/i/j;

    if-eqz v3, :cond_11

    iget v4, v3, La/d/a/i/l;->b:I

    if-ne v4, v1, :cond_11

    .line 40
    iget-object v1, v0, La/d/a/i/j;->f:La/d/a/i/j;

    iput-object v1, p0, La/d/a/i/j;->f:La/d/a/i/j;

    .line 41
    iget-object v1, v3, La/d/a/i/j;->f:La/d/a/i/j;

    iput-object v1, v2, La/d/a/i/j;->f:La/d/a/i/j;

    .line 42
    iget v0, v0, La/d/a/i/j;->g:F

    iget v1, p0, La/d/a/i/j;->e:F

    add-float/2addr v0, v1

    iput v0, p0, La/d/a/i/j;->g:F

    .line 43
    iget v0, v3, La/d/a/i/j;->g:F

    iget v1, v2, La/d/a/i/j;->e:F

    add-float/2addr v0, v1

    iput v0, v2, La/d/a/i/j;->g:F

    .line 44
    invoke-virtual {p0}, La/d/a/i/l;->a()V

    .line 45
    iget-object v0, p0, La/d/a/i/j;->i:La/d/a/i/j;

    invoke-virtual {v0}, La/d/a/i/l;->a()V

    goto :goto_7

    .line 46
    :cond_11
    iget v0, p0, La/d/a/i/j;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 47
    iget-object v0, p0, La/d/a/i/j;->c:La/d/a/i/c;

    iget-object v0, v0, La/d/a/i/c;->b:La/d/a/i/d;

    invoke-virtual {v0}, La/d/a/i/d;->m()V

    :cond_12
    :goto_7
    return-void
.end method

.method public e()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, La/d/a/i/l;->b:I

    .line 2
    iget-object v1, p0, La/d/a/i/l;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, La/d/a/i/j;->d:La/d/a/i/j;

    const/4 v2, 0x0

    .line 4
    iput v2, p0, La/d/a/i/j;->e:F

    .line 5
    iput-object v1, p0, La/d/a/i/j;->j:La/d/a/i/k;

    const/4 v3, 0x1

    .line 6
    iput v3, p0, La/d/a/i/j;->k:I

    .line 7
    iput-object v1, p0, La/d/a/i/j;->l:La/d/a/i/k;

    .line 8
    iput v3, p0, La/d/a/i/j;->m:I

    .line 9
    iput-object v1, p0, La/d/a/i/j;->f:La/d/a/i/j;

    .line 10
    iput v2, p0, La/d/a/i/j;->g:F

    .line 11
    iput-object v1, p0, La/d/a/i/j;->i:La/d/a/i/j;

    .line 12
    iput v0, p0, La/d/a/i/j;->h:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, La/d/a/i/l;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, La/d/a/i/j;->f:La/d/a/i/j;

    const-string v1, ", RESOLVED: "

    const-string v2, "["

    if-ne v0, p0, :cond_0

    .line 3
    invoke-static {v2}, Lb/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/d/a/i/j;->c:La/d/a/i/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/d/a/i/j;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/d/a/i/j;->h:I

    invoke-virtual {p0, v1}, La/d/a/i/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v2}, Lb/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/d/a/i/j;->c:La/d/a/i/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/d/a/i/j;->f:La/d/a/i/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/d/a/i/j;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/d/a/i/j;->h:I

    .line 5
    invoke-virtual {p0, v1}, La/d/a/i/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "{ "

    .line 6
    invoke-static {v0}, Lb/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/a/i/j;->c:La/d/a/i/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La/d/a/i/j;->h:I

    invoke-virtual {p0, v1}, La/d/a/i/j;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
