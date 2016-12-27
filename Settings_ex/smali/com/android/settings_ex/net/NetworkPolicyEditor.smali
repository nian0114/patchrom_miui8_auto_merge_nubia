.class public Lcom/android/settings_ex/net/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# instance fields
.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private modified:Z


# direct methods
.method public constructor <init>(Landroid/net/NetworkPolicyManager;)V
    .locals 1
    .param p1, "policyManager"    # Landroid/net/NetworkPolicyManager;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->modified:Z

    .line 63
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/net/NetworkPolicyEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/net/NetworkPolicyEditor;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->addPolicyData()V

    return-void
.end method

.method private addPolicyAsync()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/android/settings_ex/net/NetworkPolicyEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/net/NetworkPolicyEditor$1;-><init>(Lcom/android/settings_ex/net/NetworkPolicyEditor;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/net/NetworkPolicyEditor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method

.method private addPolicyData()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, -0x1

    .line 87
    iget-object v5, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 88
    .local v3, "policies":[Landroid/net/NetworkPolicy;
    iget-object v5, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 89
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 91
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-wide v6, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 92
    iput-wide v8, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 93
    iput-boolean v10, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->modified:Z

    .line 95
    :cond_0
    iget-wide v6, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 96
    iput-wide v8, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 97
    iput-boolean v10, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->modified:Z

    .line 99
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    return-void
.end method

.method private static buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 15
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 158
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 159
    const/4 v2, -0x1

    .line 160
    .local v2, "cycleDay":I
    const-string v3, "UTC"

    .line 161
    .local v3, "cycleTimezone":Ljava/lang/String;
    const/4 v12, 0x0

    .line 170
    .local v12, "metered":Z
    :goto_0
    new-instance v0, Landroid/net/NetworkPolicy;

    const/4 v13, 0x1

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    return-object v0

    .line 163
    .end local v2    # "cycleDay":I
    .end local v3    # "cycleTimezone":Ljava/lang/String;
    .end local v12    # "metered":Z
    :cond_0
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 164
    .local v14, "time":Landroid/text/format/Time;
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 165
    iget v2, v14, Landroid/text/format/Time;->monthDay:I

    .line 166
    .restart local v2    # "cycleDay":I
    iget-object v3, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 167
    .restart local v3    # "cycleTimezone":Ljava/lang/String;
    const/4 v12, 0x1

    .restart local v12    # "metered":Z
    goto :goto_0
.end method

.method private static buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;
    .locals 5
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v2, 0x0

    .line 369
    if-nez p0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v2

    .line 370
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "networkId":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "strippedNetworkId":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    new-instance v2, Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private forceMobilePolicyCombined()Z
    .locals 6

    .prologue
    .line 265
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    .line 266
    .local v4, "subscriberIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 267
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    const/4 v1, 0x0

    .line 271
    .local v1, "modified":Z
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 272
    .local v3, "subscriberId":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setMobilePolicySplitInternal(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v1, v5

    .line 273
    goto :goto_1

    .line 274
    .end local v3    # "subscriberId":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private setMobilePolicySplitInternal(Ljava/lang/String;Z)Z
    .locals 26
    .param p1, "subscriberId"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 312
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v20

    .line 314
    .local v20, "beforeSplit":Z
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 315
    .local v5, "template3g":Landroid/net/NetworkTemplate;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v25

    .line 316
    .local v25, "template4g":Landroid/net/NetworkTemplate;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 318
    .local v3, "templateAll":Landroid/net/NetworkTemplate;
    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 320
    const/4 v2, 0x0

    .line 359
    .end local v5    # "template3g":Landroid/net/NetworkTemplate;
    :goto_0
    return v2

    .line 322
    .restart local v5    # "template3g":Landroid/net/NetworkTemplate;
    :cond_0
    if-eqz v20, :cond_5

    if-nez p2, :cond_5

    .line 324
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v21

    .line 325
    .local v21, "policy3g":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v22

    .line 327
    .local v22, "policy4g":Landroid/net/NetworkPolicy;
    const/16 v24, 0x0

    .line 328
    .local v24, "restrictive":Landroid/net/NetworkPolicy;
    if-nez v21, :cond_1

    if-nez v22, :cond_1

    .line 329
    const/4 v2, 0x0

    goto :goto_0

    .line 330
    :cond_1
    if-nez v21, :cond_2

    .line 331
    move-object/from16 v24, v22

    .line 337
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v2, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v24

    iget v4, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v24

    iget-object v5, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .end local v5    # "template3g":Landroid/net/NetworkTemplate;
    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v24

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object/from16 v0, v24

    iget-boolean v14, v0, Landroid/net/NetworkPolicy;->metered:Z

    move-object/from16 v0, v24

    iget-boolean v15, v0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const/4 v2, 0x1

    goto :goto_0

    .line 332
    .restart local v5    # "template3g":Landroid/net/NetworkTemplate;
    :cond_2
    if-nez v22, :cond_3

    .line 333
    move-object/from16 v24, v21

    goto :goto_1

    .line 335
    :cond_3
    invoke-virtual/range {v21 .. v22}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v2

    if-gez v2, :cond_4

    move-object/from16 v24, v21

    :goto_2
    goto :goto_1

    :cond_4
    move-object/from16 v24, v22

    goto :goto_2

    .line 344
    .end local v21    # "policy3g":Landroid/net/NetworkPolicy;
    .end local v22    # "policy4g":Landroid/net/NetworkPolicy;
    .end local v24    # "restrictive":Landroid/net/NetworkPolicy;
    :cond_5
    if-nez v20, :cond_7

    if-eqz p2, :cond_7

    .line 346
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v23

    .line 347
    .local v23, "policyAll":Landroid/net/NetworkPolicy;
    if-nez v23, :cond_6

    .line 348
    const/4 v2, 0x0

    goto :goto_0

    .line 350
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v4, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v23

    iget v6, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-wide v8, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v23

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    move/from16 v16, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move/from16 v17, v0

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v6, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v23

    iget v8, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v23

    iget-object v9, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v23

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v14, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->metered:Z

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/net/NetworkPolicy;->inferred:Z

    move/from16 v19, v0

    move-object/from16 v7, v25

    invoke-direct/range {v6 .. v19}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 359
    .end local v23    # "policyAll":Landroid/net/NetworkPolicy;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 126
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-nez v0, :cond_0

    .line 127
    invoke-static {p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    return-object v0
.end method

.method public getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 135
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPolicyCycleDay(Landroid/net/NetworkTemplate;)I
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 176
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 203
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getPolicyMaybeUnquoted(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 144
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    .line 147
    .end local v0    # "policy":Landroid/net/NetworkPolicy;
    :goto_0
    return-object v0

    .restart local v0    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    goto :goto_0
.end method

.method public getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 190
    .local v0, "policy":Landroid/net/NetworkPolicy;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public isMobilePolicySplit(Ljava/lang/String;)Z
    .locals 6
    .param p1, "subscriberId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "has3g":Z
    const/4 v1, 0x0

    .line 281
    .local v1, "has4g":Z
    iget-object v5, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 282
    .local v3, "policy":Landroid/net/NetworkPolicy;
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 283
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 284
    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    const/4 v0, 0x1

    .line 287
    goto :goto_0

    .line 289
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 294
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    .end local v4    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->addPolicyAsync()V

    .line 70
    iget-boolean v0, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->modified:Z

    invoke-direct {p0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->forceMobilePolicyCombined()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->modified:Z

    .line 73
    iget-boolean v0, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->modified:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->writeAsync()V

    .line 74
    :cond_0
    return-void
.end method

.method public setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleDay"    # I
    .param p3, "cycleTimezone"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 181
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 182
    iput-object p3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 184
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->writeAsync()V

    .line 186
    return-void
.end method

.method public setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "limitBytes"    # J

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 208
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 209
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 210
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->writeAsync()V

    .line 212
    return-void
.end method

.method public setPolicyMetered(Landroid/net/NetworkTemplate;Z)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "metered"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "modified":Z
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 227
    .local v1, "policy":Landroid/net/NetworkPolicy;
    if-eqz p2, :cond_4

    .line 228
    if-nez v1, :cond_3

    .line 229
    invoke-static {p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 230
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 231
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 232
    iget-object v4, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const/4 v0, 0x1

    .line 251
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->buildUnquotedNetworkTemplate(Landroid/net/NetworkTemplate;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 252
    .local v2, "unquoted":Landroid/net/NetworkTemplate;
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 253
    .local v3, "unquotedPolicy":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_1

    .line 254
    iget-object v4, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 255
    const/4 v0, 0x1

    .line 258
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->writeAsync()V

    .line 259
    :cond_2
    return-void

    .line 234
    .end local v2    # "unquoted":Landroid/net/NetworkTemplate;
    .end local v3    # "unquotedPolicy":Landroid/net/NetworkPolicy;
    :cond_3
    iget-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-nez v4, :cond_0

    .line 235
    iput-boolean v6, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 236
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 237
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    :cond_4
    if-eqz v1, :cond_0

    .line 243
    iget-boolean v4, v1, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_0

    .line 244
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->metered:Z

    .line 245
    iput-boolean v5, v1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 246
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "warningBytes"    # J

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 195
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 197
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->writeAsync()V

    .line 199
    return-void
.end method

.method public setSwitchSimCaution(Landroid/net/NetworkTemplate;Z)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enable"    # Z

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 383
    .local v0, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {v0, p2}, Landroid/net/NetworkPolicy;->setSwitchSimCaution(Z)V

    .line 384
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 385
    invoke-virtual {v0}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 386
    invoke-virtual {p0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->writeAsync()V

    .line 387
    return-void
.end method

.method public write([Landroid/net/NetworkPolicy;)V
    .locals 1
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 117
    return-void
.end method

.method public writeAsync()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 106
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    new-instance v1, Lcom/android/settings_ex/net/NetworkPolicyEditor$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/net/NetworkPolicyEditor$2;-><init>(Lcom/android/settings_ex/net/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void
.end method
