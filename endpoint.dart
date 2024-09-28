// To parse this JSON data, do
//
//     final endpoint = endpointFromJson(jsonString);

import 'dart:convert';

Endpoint endpointFromJson(String str) => Endpoint.fromJson(json.decode(str));

String endpointToJson(Endpoint data) => json.encode(data.toJson());

class Endpoint {
    final List<dynamic>? schemes;
    final String? swagger;
    final Info? info;
    final String? host;
    final String? basePath;
    final Paths? paths;
    final Definitions? definitions;
    final SecurityDefinitions? securityDefinitions;

    Endpoint({
        this.schemes,
        this.swagger,
        this.info,
        this.host,
        this.basePath,
        this.paths,
        this.definitions,
        this.securityDefinitions,
    });

    factory Endpoint.fromJson(Map<String, dynamic> json) => Endpoint(
        schemes: json["schemes"] == null ? [] : List<dynamic>.from(json["schemes"]!.map((x) => x)),
        swagger: json["swagger"],
        info: json["info"] == null ? null : Info.fromJson(json["info"]),
        host: json["host"],
        basePath: json["basePath"],
        paths: json["paths"] == null ? null : Paths.fromJson(json["paths"]),
        definitions: json["definitions"] == null ? null : Definitions.fromJson(json["definitions"]),
        securityDefinitions: json["securityDefinitions"] == null ? null : SecurityDefinitions.fromJson(json["securityDefinitions"]),
    );

    Map<String, dynamic> toJson() => {
        "schemes": schemes == null ? [] : List<dynamic>.from(schemes!.map((x) => x)),
        "swagger": swagger,
        "info": info?.toJson(),
        "host": host,
        "basePath": basePath,
        "paths": paths?.toJson(),
        "definitions": definitions?.toJson(),
        "securityDefinitions": securityDefinitions?.toJson(),
    };
}

class Definitions {
    final AccountResponseAccountMe? accountResponseAccountMe;
    final UpdateAvatarResponse? accountUpdateAvatarResponse;
    final ArticleArticleResponse? articleArticleResponse;
    final ArticleArticleWithCategoryRequest? articleArticleWithCategoryRequest;
    final ArticleArticleWriter? articleArticleWriter;
    final ArticleArticleWriterResponse? articleArticleWriterResponse;
    final ArticleCountArticleCat? articleCountArticleCat;
    final ArticleDeleteFavoriteArticle? articleDeleteFavoriteArticle;
    final ArticleArticleWriterResponse? articleGetArticleForYou;
    final ArticleGetFavoriteArticle? articleGetFavoriteArticle;
    final ArticleImagesResponse? articleImagesResponse;
    final ArticleResponseArticleId? articleResponseArticleId;
    final ArticleResponseArticles? articleResponseArticles;
    final ArticleResponsePhoto? articleResponsePhoto;
    final ArticleUpdateStatus? articleUpdateStatus;
    final AuthSendPhoneCodeDto? authSendPhoneCodeDto;
    final AuthSignInDto? authSignInDto;
    final AuthSignInResponse? authSignInResponse;
    final AuthSignUpDto? authSignUpDto;
    final AuthSignUpResponse? authSignUpResponse;
    final AuthUpdatePhoneDto? authUpdatePhoneDto;
    final CategoryInsertCategoryDtoClass? categoryInsertCategoryDto;
    final ArticleResponseArticleId? categoryResponseDto;
    final ArticleArticleWriterResponse? categoryResponseListOfAgeCategory;
    final ArticleArticleWriterResponse? categoryResponseListOfCategory;
    final ChatAllChatsResponse? chatAllChatsResponse;
    final ChatResponse? chatChatResponse;
    final ChatChatsResponse? chatChatsResponse;
    final ChatFileResponse? chatFileResponse;
    final ChatGetChatWithUserDtoClass? chatGetChatWithUserDto;
    final ChatChatsResponse? chatGroupChatsResponse;
    final ChatMessagesResponse? chatMessagesResponse;
    final ChatResponseGetAllMembersInChats? chatResponseGetAllMembersInChats;
    final ChatSearchDto? chatSearchDto;
    final ChatSearchInChatResp? chatSearchInChatResp;
    final ChildCreateDto? childCreateDto;
    final ChildDelete? childDeleteAvatar;
    final ChildDelete? childDeleteDto;
    final ChildStatusResponse? childStatusResponse;
    final UpdateAvatarResponse? childUpdateAvatarResponse;
    final ChildUpdateDto? childUpdateDto;
    final ConsultationSetDto? consultationSetDto;
    final ConsultationUpdateDto? consultationUpdateDto;
    final ConsultationGetResponse? consultationGetResponse;
    final ConsultationListResponse? consultationListResponse;
    final DiapersCreateDiaperDto? diapersCreateDiaperDto;
    final DiapersDeleteDiaper? diapersDeleteDiaper;
    final GetDto? diapersGetDto;
    final ArticleResponseArticleId? diapersResponseInsertDto;
    final ArticleArticleWriterResponse? diapersResponseListDiapers;
    final DiapersUpdateDiaperDto? diapersUpdateDiaperDto;
    final ArticleResponseArticleId? doctorDeleteDto;
    final DoctorDoctorResponse? doctorDoctorResponse;
    final DoctorDoctorsResponse? doctorDoctorsResponse;
    final RUpdateDto? doctorUpdateDto;
    final WorkTime? doctorUpdateWorkTime;
    final EntityAccount? entityAccount;
    final EntityAccountMe? entityAccountMe;
    final EntityAgeCategoryClass? entityAgeCategory;
    final EntityArticleImage? entityArticleImage;
    final EntityArticleResponse? entityArticleResponse;
    final EntityArticleWriter? entityArticleWriter;
    final EntityBaseUser? entityBaseUser;
    final EntityBodyResponse? entityBodyResponse;
    final EntityAgeCategoryClass? entityCategory;
    final EntityChestHistoryClass? entityChestHistory;
    final EntityChestHistoryTotal? entityChestHistoryTotal;
    final EntityChild? entityChild;
    final EntityChildbirthClass? entityChildbirth;
    final EntityCircle? entityCircle;
    final EntityCity? entityCity;
    final EntityConsultationResponse? entityConsultationResponse;
    final EntityAgeCategoryClass? entityCountry;
    final EntityCryClass? entityCry;
    final EntityCryAndSleep? entityCryAndSleep;
    final EntityCryHistoryClass? entityCryHistory;
    final EntityHistoryTotal? entityCryHistoryTotal;
    final EntityCurrent? entityCurrentCircle;
    final EntityCurrentCircleStruct? entityCurrentCircleStruct;
    final EntityCurrent? entityCurrentHeight;
    final EntityCurrentHeightStruct? entityCurrentHeightStruct;
    final EntityCurrentWeightStruct? entityCurrentWeightStruct;
    final EntityCurrent? entityCurrentWight;
    final EntityDiapersMain? entityDiapersMain;
    final EntityDiapersSubMain? entityDiapersSubMain;
    final EntityDoctorBase? entityDoctorBase;
    final EntityDoctorResponse? entityDoctorResponse;
    final WorkTime? entityDoctorWorkTime;
    final EntityDynamicsCircle? entityDynamicsCircle;
    final EntityDynamicsHeight? entityDynamicsHeight;
    final EntityDynamicsWeight? entityDynamicsWeight;
    final EntityFeedback? entityFeedback;
    final EntityFeeding? entityFeeding;
    final EntityFood? entityFood;
    final EntityFoodHistory? entityFoodHistory;
    final EntityFoodHistoryTotal? entityFoodHistoryTotal;
    final EntityChildbirthClass? entityGender;
    final EntityGetCircle? entityGetCircle;
    final EntityGetEight? entityGetHeight;
    final EntityGetEight? entityGetWeight;
    final EntityGroupChat? entityGroupChat;
    final EntityGroupsChat? entityGroupsChat;
    final EntityCircle? entityHeight;
    final EntityHistory? entityHistoryCircle;
    final EntityHistory? entityHistoryHeight;
    final EntityHistory? entityHistoryWeight;
    final EntityInsertLure? entityInsertLure;
    final EntityLureHistory? entityLureHistory;
    final EntityLureHistoryTotal? entityLureHistoryTotal;
    final EntityMainDoctor? entityMainDoctor;
    final EntityMainDrug? entityMainDrug;
    final ChildUpdateDto? entityMessage;
    final EntityMessageDto? entityMessageDto;
    final EntityMessage? entityMessageResp;
    final EntityMessage? entityMessageWithReply;
    final EntityNotification? entityNotification;
    final EntityOnlineSchool? entityOnlineSchool;
    final EntityOnlineSchoolCourse? entityOnlineSchoolCourse;
    final EntityOnlineSchoolNumber? entityOnlineSchoolNumber;
    final EntityOnlineSchoolResponse? entityOnlineSchoolResponse;
    final EntityPromocode? entityPromocode;
    final EntityChestHistoryClass? entityPumpingHistory;
    final EntityPumpingHistoryTotal? entityPumpingHistoryTotal;
    final EntityChildbirthClass? entityRole;
    final EntitySingleChat? entitySingleChat;
    final EntityCryClass? entitySleep;
    final EntityCryHistoryClass? entitySleepHistory;
    final EntityHistoryTotal? entitySleepHistoryTotal;
    final EntityStatAccountBuy? entityStatAccountBuy;
    final EntityChildbirthClass? entityState;
    final EntityChildbirthClass? entityStatus;
    final EntityStatusOfChild? entityStatusOfChild;
    final EntityTable? entityTable;
    final EntityTableCircle? entityTableCircle;
    final EntityTableFeed? entityTableFeed;
    final EntityTableFeedTotal? entityTableFeedTotal;
    final EntityTableHeight? entityTableHeight;
    final EntityTableSleepCryTotal? entityTableSleepCryTotal;
    final EntityTableWeight? entityTableWeight;
    final EntityAgeCategoryClass? entityTag;
    final EntityTemperatureHistory? entityTemperatureHistory;
    final EntityTemperatureHistoryTotal? entityTemperatureHistoryTotal;
    final Response? entityUserResponse;
    final EntityVaccinationMain? entityVaccinationMain;
    final ChildUpdateDto? entityWatcher;
    final EntityCircle? entityWeight;
    final GetDto? feedGetDto;
    final ArticleArticleWriterResponse? feedGetFeedingResponse;
    final ArticleArticleWriterResponse? feedGetFoodResponse;
    final FeedInsertChestDto? feedInsertChestDto;
    final FeedInsertFoodDto? feedInsertFoodDto;
    final FeedInsertLureDto? feedInsertLureDto;
    final FeedInsertPumpingDto? feedInsertPumpingDto;
    final ArticleArticleWriterResponse? feedResponseHistoryChest;
    final ArticleArticleWriterResponse? feedResponseHistoryFood;
    final ArticleArticleWriterResponse? feedResponseHistoryLure;
    final ArticleArticleWriterResponse? feedResponseHistoryPumping;
    final ArticleArticleWriterResponse? feedResponseHistoryTable;
    final ArticleResponseArticleId? feedResponseInsertDto;
    final ChatResponse? feedbackChatResponse;
    final FeedbackCreateDto? feedbackCreateDto;
    final ArticleResponseArticleId? feedbackResponseCreate;
    final GeoCitiesResponse? geoCitiesResponse;
    final GeoCountriesResponse? geoCountriesResponse;
    final ArticleResponseArticleId? growthResponseInsert;
    final GrowthChangeNotesDto? growthChangeNotesCircleDto;
    final GrowthChangeNotesDto? growthChangeNotesHeightDto;
    final GrowthChangeNotesDto? growthChangeNotesWeightDto;
    final GrowthChangeStatsDto? growthChangeStatsCircleDto;
    final GrowthChangeStatsDto? growthChangeStatsHeightDto;
    final GrowthChangeStatsDto? growthChangeStatsWeightDto;
    final ArticleResponseArticleId? growthDeleteCircleDto;
    final ArticleResponseArticleId? growthDeleteHeightDto;
    final ArticleResponseArticleId? growthDeleteWeightDto;
    final GrowthDtoGetCircleById? growthDtoGetCircleById;
    final GrowthDtoGetHeightById? growthDtoGetHeightById;
    final GrowthDtoGetWeightById? growthDtoGetWeightById;
    final GrowthGetCircleResponse? growthGetCircleResponse;
    final GrowthGetCircleResponse? growthGetHeightResponse;
    final ArticleArticleWriterResponse? growthGetTableResponse;
    final GrowthGetCircleResponse? growthGetWeightResponse;
    final EntityCircle? growthInsertCircleDto;
    final EntityCircle? growthInsertHeightDto;
    final EntityCircle? growthInsertWeightDto;
    final GrowthGetCircleResponse? growthResponseGetCircle;
    final GrowthGetCircleResponse? growthResponseGetHeight;
    final GrowthGetCircleResponse? growthResponseGetWeight;
    final ArticleArticleWriterResponse? growthResponseHistoryCircle;
    final ArticleArticleWriterResponse? growthResponseHistoryHeight;
    final ArticleArticleWriterResponse? growthResponseHistoryWeight;
    final HealthCompletedDrug? healthCompletedDrug;
    final DiapersDeleteDiaper? healthDeleteConsDoctor;
    final DiapersDeleteDiaper? healthDeleteDrug;
    final DiapersDeleteDiaper? healthDeleteVaccination;
    final HealthInsertTemperatureDto? healthInsertTemperatureDto;
    final ArticleArticleWriterResponse? healthResponseHistoryTemperature;
    final ArticleResponseArticleId? healthResponseInsertDto;
    final ArticleArticleWriterResponse? healthResponseListConsDoctor;
    final ArticleArticleWriterResponse? healthResponseListDrug;
    final ArticleArticleWriterResponse? healthResponseListVaccination;
    final ModeratorCreateDto? moderatorCreateDto;
    final ChatResponse? moderatorChatResponse;
    final ChatGetChatWithUserDtoClass? moderatorChatsDto;
    final ArticleResponseArticleId? moderatorDeleteDto;
    final ArticleResponseArticleId? moderatorDeleteFeedbackDto;
    final ModeratorInsertUsersToChat? moderatorInsertUsersToChat;
    final AccountResponseAccountMe? moderatorMeResponse;
    final ModeratorMusicCategoriesDto? moderatorMusicCategoriesDto;
    final ArticleArticleWriterResponse? moderatorRespPromocode;
    final DoctorDoctorResponse? moderatorResponseDoctor;
    final ModeratorResponseListOfFeedback? moderatorResponseListOfFeedback;
    final AccountResponseAccountMe? moderatorResponseModerator;
    final ResponseOnlineSchool? moderatorResponseOnlineSchool;
    final ModeratorSendAdminNotificationDto? moderatorSendAdminNotificationDto;
    final ModeratorStatReq? moderatorStatReq;
    final ArticleArticleWriterResponse? moderatorStatResp;
    final ArticleUpdateStatus? moderatorUpdateFeedbackDto;
    final ModeratorUpdateFeedbackTypeDto? moderatorUpdateFeedbackTypeDto;
    final ModeratorUpdateGroupChatName? moderatorUpdateGroupChatName;
    final ModeratorUpdatePromoCodeDto? moderatorUpdatePromoCodeDto;
    final MusicUpdateDto? musicUpdateDto;
    final ArticleResponseArticleId? notificationDeleteDto;
    final NotificationNotificationsResponse? notificationNotificationsResponse;
    final OnlineSchoolReqAddOnlineSchoolClass? onlineSchoolReqAddOnlineSchool;
    final ArticleArticleWriterResponse? onlineSchoolRespOnlineSchoolCourse;
    final ArticleArticleWriterResponse? onlineSchoolRespOnlineSchoolNumbers;
    final ResponseOnlineSchool? onlineSchoolResponseOnlineSchool;
    final OnlineSchoolUpdateDto? onlineSchoolUpdateDto;
    final OnlineSchoolUpdateNumberDto? onlineSchoolUpdateNumberDto;
    final OnlineSchoolReqAddOnlineSchoolClass? onlineSchoolUpdateOnlineCourseDto;
    final PaymentGetStatusPaymentReq? paymentGetStatusPaymentReq;
    final PaymentGetStatusPaymentResp? paymentGetStatusPaymentResp;
    final PdfPdfDto? pdfPdfDto;
    final ArticleArticleWriterResponse? sleepcryGetCryResponse;
    final GetDto? sleepcryGetDto;
    final ArticleArticleWriterResponse? sleepcryGetSleepResponse;
    final SleepcryInsertDto? sleepcryInsertCryDto;
    final SleepcryInsertDto? sleepcryInsertSleepDto;
    final ArticleArticleWriterResponse? sleepcryResponseHistoryCry;
    final ArticleArticleWriterResponse? sleepcryResponseHistorySleep;
    final ArticleArticleWriterResponse? sleepcryResponseHistoryTable;
    final GrowthGetCircleResponse? sleepcryResponseHistoryTablePeriod;
    final ArticleResponseArticleId? sleepcryResponseInsertDto;
    final CategoryInsertCategoryDtoClass? tagsCreateDto;
    final TagsResponseTags? tagsResponseTags;
    final TagsSetDto? tagsSetDto;
    final TagsSetDto? tagsUnsetDto;
    final UserListResponse? userListResponse;
    final Response? userMeResponse;
    final RUpdateDto? userUpdateDto;
    final GrowthGetCircleResponse? watcherResponseGetWatcher;

    Definitions({
        this.accountResponseAccountMe,
        this.accountUpdateAvatarResponse,
        this.articleArticleResponse,
        this.articleArticleWithCategoryRequest,
        this.articleArticleWriter,
        this.articleArticleWriterResponse,
        this.articleCountArticleCat,
        this.articleDeleteFavoriteArticle,
        this.articleGetArticleForYou,
        this.articleGetFavoriteArticle,
        this.articleImagesResponse,
        this.articleResponseArticleId,
        this.articleResponseArticles,
        this.articleResponsePhoto,
        this.articleUpdateStatus,
        this.authSendPhoneCodeDto,
        this.authSignInDto,
        this.authSignInResponse,
        this.authSignUpDto,
        this.authSignUpResponse,
        this.authUpdatePhoneDto,
        this.categoryInsertCategoryDto,
        this.categoryResponseDto,
        this.categoryResponseListOfAgeCategory,
        this.categoryResponseListOfCategory,
        this.chatAllChatsResponse,
        this.chatChatResponse,
        this.chatChatsResponse,
        this.chatFileResponse,
        this.chatGetChatWithUserDto,
        this.chatGroupChatsResponse,
        this.chatMessagesResponse,
        this.chatResponseGetAllMembersInChats,
        this.chatSearchDto,
        this.chatSearchInChatResp,
        this.childCreateDto,
        this.childDeleteAvatar,
        this.childDeleteDto,
        this.childStatusResponse,
        this.childUpdateAvatarResponse,
        this.childUpdateDto,
        this.consultationSetDto,
        this.consultationUpdateDto,
        this.consultationGetResponse,
        this.consultationListResponse,
        this.diapersCreateDiaperDto,
        this.diapersDeleteDiaper,
        this.diapersGetDto,
        this.diapersResponseInsertDto,
        this.diapersResponseListDiapers,
        this.diapersUpdateDiaperDto,
        this.doctorDeleteDto,
        this.doctorDoctorResponse,
        this.doctorDoctorsResponse,
        this.doctorUpdateDto,
        this.doctorUpdateWorkTime,
        this.entityAccount,
        this.entityAccountMe,
        this.entityAgeCategory,
        this.entityArticleImage,
        this.entityArticleResponse,
        this.entityArticleWriter,
        this.entityBaseUser,
        this.entityBodyResponse,
        this.entityCategory,
        this.entityChestHistory,
        this.entityChestHistoryTotal,
        this.entityChild,
        this.entityChildbirth,
        this.entityCircle,
        this.entityCity,
        this.entityConsultationResponse,
        this.entityCountry,
        this.entityCry,
        this.entityCryAndSleep,
        this.entityCryHistory,
        this.entityCryHistoryTotal,
        this.entityCurrentCircle,
        this.entityCurrentCircleStruct,
        this.entityCurrentHeight,
        this.entityCurrentHeightStruct,
        this.entityCurrentWeightStruct,
        this.entityCurrentWight,
        this.entityDiapersMain,
        this.entityDiapersSubMain,
        this.entityDoctorBase,
        this.entityDoctorResponse,
        this.entityDoctorWorkTime,
        this.entityDynamicsCircle,
        this.entityDynamicsHeight,
        this.entityDynamicsWeight,
        this.entityFeedback,
        this.entityFeeding,
        this.entityFood,
        this.entityFoodHistory,
        this.entityFoodHistoryTotal,
        this.entityGender,
        this.entityGetCircle,
        this.entityGetHeight,
        this.entityGetWeight,
        this.entityGroupChat,
        this.entityGroupsChat,
        this.entityHeight,
        this.entityHistoryCircle,
        this.entityHistoryHeight,
        this.entityHistoryWeight,
        this.entityInsertLure,
        this.entityLureHistory,
        this.entityLureHistoryTotal,
        this.entityMainDoctor,
        this.entityMainDrug,
        this.entityMessage,
        this.entityMessageDto,
        this.entityMessageResp,
        this.entityMessageWithReply,
        this.entityNotification,
        this.entityOnlineSchool,
        this.entityOnlineSchoolCourse,
        this.entityOnlineSchoolNumber,
        this.entityOnlineSchoolResponse,
        this.entityPromocode,
        this.entityPumpingHistory,
        this.entityPumpingHistoryTotal,
        this.entityRole,
        this.entitySingleChat,
        this.entitySleep,
        this.entitySleepHistory,
        this.entitySleepHistoryTotal,
        this.entityStatAccountBuy,
        this.entityState,
        this.entityStatus,
        this.entityStatusOfChild,
        this.entityTable,
        this.entityTableCircle,
        this.entityTableFeed,
        this.entityTableFeedTotal,
        this.entityTableHeight,
        this.entityTableSleepCryTotal,
        this.entityTableWeight,
        this.entityTag,
        this.entityTemperatureHistory,
        this.entityTemperatureHistoryTotal,
        this.entityUserResponse,
        this.entityVaccinationMain,
        this.entityWatcher,
        this.entityWeight,
        this.feedGetDto,
        this.feedGetFeedingResponse,
        this.feedGetFoodResponse,
        this.feedInsertChestDto,
        this.feedInsertFoodDto,
        this.feedInsertLureDto,
        this.feedInsertPumpingDto,
        this.feedResponseHistoryChest,
        this.feedResponseHistoryFood,
        this.feedResponseHistoryLure,
        this.feedResponseHistoryPumping,
        this.feedResponseHistoryTable,
        this.feedResponseInsertDto,
        this.feedbackChatResponse,
        this.feedbackCreateDto,
        this.feedbackResponseCreate,
        this.geoCitiesResponse,
        this.geoCountriesResponse,
        this.growthResponseInsert,
        this.growthChangeNotesCircleDto,
        this.growthChangeNotesHeightDto,
        this.growthChangeNotesWeightDto,
        this.growthChangeStatsCircleDto,
        this.growthChangeStatsHeightDto,
        this.growthChangeStatsWeightDto,
        this.growthDeleteCircleDto,
        this.growthDeleteHeightDto,
        this.growthDeleteWeightDto,
        this.growthDtoGetCircleById,
        this.growthDtoGetHeightById,
        this.growthDtoGetWeightById,
        this.growthGetCircleResponse,
        this.growthGetHeightResponse,
        this.growthGetTableResponse,
        this.growthGetWeightResponse,
        this.growthInsertCircleDto,
        this.growthInsertHeightDto,
        this.growthInsertWeightDto,
        this.growthResponseGetCircle,
        this.growthResponseGetHeight,
        this.growthResponseGetWeight,
        this.growthResponseHistoryCircle,
        this.growthResponseHistoryHeight,
        this.growthResponseHistoryWeight,
        this.healthCompletedDrug,
        this.healthDeleteConsDoctor,
        this.healthDeleteDrug,
        this.healthDeleteVaccination,
        this.healthInsertTemperatureDto,
        this.healthResponseHistoryTemperature,
        this.healthResponseInsertDto,
        this.healthResponseListConsDoctor,
        this.healthResponseListDrug,
        this.healthResponseListVaccination,
        this.moderatorCreateDto,
        this.moderatorChatResponse,
        this.moderatorChatsDto,
        this.moderatorDeleteDto,
        this.moderatorDeleteFeedbackDto,
        this.moderatorInsertUsersToChat,
        this.moderatorMeResponse,
        this.moderatorMusicCategoriesDto,
        this.moderatorRespPromocode,
        this.moderatorResponseDoctor,
        this.moderatorResponseListOfFeedback,
        this.moderatorResponseModerator,
        this.moderatorResponseOnlineSchool,
        this.moderatorSendAdminNotificationDto,
        this.moderatorStatReq,
        this.moderatorStatResp,
        this.moderatorUpdateFeedbackDto,
        this.moderatorUpdateFeedbackTypeDto,
        this.moderatorUpdateGroupChatName,
        this.moderatorUpdatePromoCodeDto,
        this.musicUpdateDto,
        this.notificationDeleteDto,
        this.notificationNotificationsResponse,
        this.onlineSchoolReqAddOnlineSchool,
        this.onlineSchoolRespOnlineSchoolCourse,
        this.onlineSchoolRespOnlineSchoolNumbers,
        this.onlineSchoolResponseOnlineSchool,
        this.onlineSchoolUpdateDto,
        this.onlineSchoolUpdateNumberDto,
        this.onlineSchoolUpdateOnlineCourseDto,
        this.paymentGetStatusPaymentReq,
        this.paymentGetStatusPaymentResp,
        this.pdfPdfDto,
        this.sleepcryGetCryResponse,
        this.sleepcryGetDto,
        this.sleepcryGetSleepResponse,
        this.sleepcryInsertCryDto,
        this.sleepcryInsertSleepDto,
        this.sleepcryResponseHistoryCry,
        this.sleepcryResponseHistorySleep,
        this.sleepcryResponseHistoryTable,
        this.sleepcryResponseHistoryTablePeriod,
        this.sleepcryResponseInsertDto,
        this.tagsCreateDto,
        this.tagsResponseTags,
        this.tagsSetDto,
        this.tagsUnsetDto,
        this.userListResponse,
        this.userMeResponse,
        this.userUpdateDto,
        this.watcherResponseGetWatcher,
    });

    factory Definitions.fromJson(Map<String, dynamic> json) => Definitions(
        accountResponseAccountMe: json["account.responseAccountMe"] == null ? null : AccountResponseAccountMe.fromJson(json["account.responseAccountMe"]),
        accountUpdateAvatarResponse: json["account.updateAvatarResponse"] == null ? null : UpdateAvatarResponse.fromJson(json["account.updateAvatarResponse"]),
        articleArticleResponse: json["article.articleResponse"] == null ? null : ArticleArticleResponse.fromJson(json["article.articleResponse"]),
        articleArticleWithCategoryRequest: json["article.articleWithCategoryRequest"] == null ? null : ArticleArticleWithCategoryRequest.fromJson(json["article.articleWithCategoryRequest"]),
        articleArticleWriter: json["article.articleWriter"] == null ? null : ArticleArticleWriter.fromJson(json["article.articleWriter"]),
        articleArticleWriterResponse: json["article.articleWriterResponse"] == null ? null : ArticleArticleWriterResponse.fromJson(json["article.articleWriterResponse"]),
        articleCountArticleCat: json["article.countArticleCat"] == null ? null : ArticleCountArticleCat.fromJson(json["article.countArticleCat"]),
        articleDeleteFavoriteArticle: json["article.deleteFavoriteArticle"] == null ? null : ArticleDeleteFavoriteArticle.fromJson(json["article.deleteFavoriteArticle"]),
        articleGetArticleForYou: json["article.getArticleForYou"] == null ? null : ArticleArticleWriterResponse.fromJson(json["article.getArticleForYou"]),
        articleGetFavoriteArticle: json["article.getFavoriteArticle"] == null ? null : ArticleGetFavoriteArticle.fromJson(json["article.getFavoriteArticle"]),
        articleImagesResponse: json["article.imagesResponse"] == null ? null : ArticleImagesResponse.fromJson(json["article.imagesResponse"]),
        articleResponseArticleId: json["article.responseArticleID"] == null ? null : ArticleResponseArticleId.fromJson(json["article.responseArticleID"]),
        articleResponseArticles: json["article.responseArticles"] == null ? null : ArticleResponseArticles.fromJson(json["article.responseArticles"]),
        articleResponsePhoto: json["article.responsePhoto"] == null ? null : ArticleResponsePhoto.fromJson(json["article.responsePhoto"]),
        articleUpdateStatus: json["article.updateStatus"] == null ? null : ArticleUpdateStatus.fromJson(json["article.updateStatus"]),
        authSendPhoneCodeDto: json["auth.sendPhoneCodeDTO"] == null ? null : AuthSendPhoneCodeDto.fromJson(json["auth.sendPhoneCodeDTO"]),
        authSignInDto: json["auth.signInDTO"] == null ? null : AuthSignInDto.fromJson(json["auth.signInDTO"]),
        authSignInResponse: json["auth.signInResponse"] == null ? null : AuthSignInResponse.fromJson(json["auth.signInResponse"]),
        authSignUpDto: json["auth.signUpDTO"] == null ? null : AuthSignUpDto.fromJson(json["auth.signUpDTO"]),
        authSignUpResponse: json["auth.signUpResponse"] == null ? null : AuthSignUpResponse.fromJson(json["auth.signUpResponse"]),
        authUpdatePhoneDto: json["auth.updatePhoneDTO"] == null ? null : AuthUpdatePhoneDto.fromJson(json["auth.updatePhoneDTO"]),
        categoryInsertCategoryDto: json["category.insertCategoryDTO"] == null ? null : CategoryInsertCategoryDtoClass.fromJson(json["category.insertCategoryDTO"]),
        categoryResponseDto: json["category.responseDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["category.responseDTO"]),
        categoryResponseListOfAgeCategory: json["category.responseListOfAgeCategory"] == null ? null : ArticleArticleWriterResponse.fromJson(json["category.responseListOfAgeCategory"]),
        categoryResponseListOfCategory: json["category.responseListOfCategory"] == null ? null : ArticleArticleWriterResponse.fromJson(json["category.responseListOfCategory"]),
        chatAllChatsResponse: json["chat.allChatsResponse"] == null ? null : ChatAllChatsResponse.fromJson(json["chat.allChatsResponse"]),
        chatChatResponse: json["chat.chatResponse"] == null ? null : ChatResponse.fromJson(json["chat.chatResponse"]),
        chatChatsResponse: json["chat.chatsResponse"] == null ? null : ChatChatsResponse.fromJson(json["chat.chatsResponse"]),
        chatFileResponse: json["chat.fileResponse"] == null ? null : ChatFileResponse.fromJson(json["chat.fileResponse"]),
        chatGetChatWithUserDto: json["chat.getChatWithUserDTO"] == null ? null : ChatGetChatWithUserDtoClass.fromJson(json["chat.getChatWithUserDTO"]),
        chatGroupChatsResponse: json["chat.groupChatsResponse"] == null ? null : ChatChatsResponse.fromJson(json["chat.groupChatsResponse"]),
        chatMessagesResponse: json["chat.messagesResponse"] == null ? null : ChatMessagesResponse.fromJson(json["chat.messagesResponse"]),
        chatResponseGetAllMembersInChats: json["chat.responseGetAllMembersInChats"] == null ? null : ChatResponseGetAllMembersInChats.fromJson(json["chat.responseGetAllMembersInChats"]),
        chatSearchDto: json["chat.searchDTO"] == null ? null : ChatSearchDto.fromJson(json["chat.searchDTO"]),
        chatSearchInChatResp: json["chat.searchInChatResp"] == null ? null : ChatSearchInChatResp.fromJson(json["chat.searchInChatResp"]),
        childCreateDto: json["child.createDTO"] == null ? null : ChildCreateDto.fromJson(json["child.createDTO"]),
        childDeleteAvatar: json["child.deleteAvatar"] == null ? null : ChildDelete.fromJson(json["child.deleteAvatar"]),
        childDeleteDto: json["child.deleteDTO"] == null ? null : ChildDelete.fromJson(json["child.deleteDTO"]),
        childStatusResponse: json["child.statusResponse"] == null ? null : ChildStatusResponse.fromJson(json["child.statusResponse"]),
        childUpdateAvatarResponse: json["child.updateAvatarResponse"] == null ? null : UpdateAvatarResponse.fromJson(json["child.updateAvatarResponse"]),
        childUpdateDto: json["child.updateDTO"] == null ? null : ChildUpdateDto.fromJson(json["child.updateDTO"]),
        consultationSetDto: json["consultation.SetDTO"] == null ? null : ConsultationSetDto.fromJson(json["consultation.SetDTO"]),
        consultationUpdateDto: json["consultation.UpdateDTO"] == null ? null : ConsultationUpdateDto.fromJson(json["consultation.UpdateDTO"]),
        consultationGetResponse: json["consultation.getResponse"] == null ? null : ConsultationGetResponse.fromJson(json["consultation.getResponse"]),
        consultationListResponse: json["consultation.listResponse"] == null ? null : ConsultationListResponse.fromJson(json["consultation.listResponse"]),
        diapersCreateDiaperDto: json["diapers.createDiaperDTO"] == null ? null : DiapersCreateDiaperDto.fromJson(json["diapers.createDiaperDTO"]),
        diapersDeleteDiaper: json["diapers.deleteDiaper"] == null ? null : DiapersDeleteDiaper.fromJson(json["diapers.deleteDiaper"]),
        diapersGetDto: json["diapers.getDTO"] == null ? null : GetDto.fromJson(json["diapers.getDTO"]),
        diapersResponseInsertDto: json["diapers.responseInsertDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["diapers.responseInsertDTO"]),
        diapersResponseListDiapers: json["diapers.responseListDiapers"] == null ? null : ArticleArticleWriterResponse.fromJson(json["diapers.responseListDiapers"]),
        diapersUpdateDiaperDto: json["diapers.updateDiaperDTO"] == null ? null : DiapersUpdateDiaperDto.fromJson(json["diapers.updateDiaperDTO"]),
        doctorDeleteDto: json["doctor.deleteDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["doctor.deleteDTO"]),
        doctorDoctorResponse: json["doctor.doctorResponse"] == null ? null : DoctorDoctorResponse.fromJson(json["doctor.doctorResponse"]),
        doctorDoctorsResponse: json["doctor.doctorsResponse"] == null ? null : DoctorDoctorsResponse.fromJson(json["doctor.doctorsResponse"]),
        doctorUpdateDto: json["doctor.updateDTO"] == null ? null : RUpdateDto.fromJson(json["doctor.updateDTO"]),
        doctorUpdateWorkTime: json["doctor.updateWorkTime"] == null ? null : WorkTime.fromJson(json["doctor.updateWorkTime"]),
        entityAccount: json["entity.Account"] == null ? null : EntityAccount.fromJson(json["entity.Account"]),
        entityAccountMe: json["entity.AccountMe"] == null ? null : EntityAccountMe.fromJson(json["entity.AccountMe"]),
        entityAgeCategory: json["entity.AgeCategory"] == null ? null : EntityAgeCategoryClass.fromJson(json["entity.AgeCategory"]),
        entityArticleImage: json["entity.ArticleImage"] == null ? null : EntityArticleImage.fromJson(json["entity.ArticleImage"]),
        entityArticleResponse: json["entity.ArticleResponse"] == null ? null : EntityArticleResponse.fromJson(json["entity.ArticleResponse"]),
        entityArticleWriter: json["entity.ArticleWriter"] == null ? null : EntityArticleWriter.fromJson(json["entity.ArticleWriter"]),
        entityBaseUser: json["entity.BaseUser"] == null ? null : EntityBaseUser.fromJson(json["entity.BaseUser"]),
        entityBodyResponse: json["entity.BodyResponse"] == null ? null : EntityBodyResponse.fromJson(json["entity.BodyResponse"]),
        entityCategory: json["entity.Category"] == null ? null : EntityAgeCategoryClass.fromJson(json["entity.Category"]),
        entityChestHistory: json["entity.ChestHistory"] == null ? null : EntityChestHistoryClass.fromJson(json["entity.ChestHistory"]),
        entityChestHistoryTotal: json["entity.ChestHistoryTotal"] == null ? null : EntityChestHistoryTotal.fromJson(json["entity.ChestHistoryTotal"]),
        entityChild: json["entity.Child"] == null ? null : EntityChild.fromJson(json["entity.Child"]),
        entityChildbirth: json["entity.Childbirth"] == null ? null : EntityChildbirthClass.fromJson(json["entity.Childbirth"]),
        entityCircle: json["entity.Circle"] == null ? null : EntityCircle.fromJson(json["entity.Circle"]),
        entityCity: json["entity.City"] == null ? null : EntityCity.fromJson(json["entity.City"]),
        entityConsultationResponse: json["entity.ConsultationResponse"] == null ? null : EntityConsultationResponse.fromJson(json["entity.ConsultationResponse"]),
        entityCountry: json["entity.Country"] == null ? null : EntityAgeCategoryClass.fromJson(json["entity.Country"]),
        entityCry: json["entity.Cry"] == null ? null : EntityCryClass.fromJson(json["entity.Cry"]),
        entityCryAndSleep: json["entity.CryAndSleep"] == null ? null : EntityCryAndSleep.fromJson(json["entity.CryAndSleep"]),
        entityCryHistory: json["entity.CryHistory"] == null ? null : EntityCryHistoryClass.fromJson(json["entity.CryHistory"]),
        entityCryHistoryTotal: json["entity.CryHistoryTotal"] == null ? null : EntityHistoryTotal.fromJson(json["entity.CryHistoryTotal"]),
        entityCurrentCircle: json["entity.CurrentCircle"] == null ? null : EntityCurrent.fromJson(json["entity.CurrentCircle"]),
        entityCurrentCircleStruct: json["entity.CurrentCircleStruct"] == null ? null : EntityCurrentCircleStruct.fromJson(json["entity.CurrentCircleStruct"]),
        entityCurrentHeight: json["entity.CurrentHeight"] == null ? null : EntityCurrent.fromJson(json["entity.CurrentHeight"]),
        entityCurrentHeightStruct: json["entity.CurrentHeightStruct"] == null ? null : EntityCurrentHeightStruct.fromJson(json["entity.CurrentHeightStruct"]),
        entityCurrentWeightStruct: json["entity.CurrentWeightStruct"] == null ? null : EntityCurrentWeightStruct.fromJson(json["entity.CurrentWeightStruct"]),
        entityCurrentWight: json["entity.CurrentWight"] == null ? null : EntityCurrent.fromJson(json["entity.CurrentWight"]),
        entityDiapersMain: json["entity.DiapersMain"] == null ? null : EntityDiapersMain.fromJson(json["entity.DiapersMain"]),
        entityDiapersSubMain: json["entity.DiapersSubMain"] == null ? null : EntityDiapersSubMain.fromJson(json["entity.DiapersSubMain"]),
        entityDoctorBase: json["entity.DoctorBase"] == null ? null : EntityDoctorBase.fromJson(json["entity.DoctorBase"]),
        entityDoctorResponse: json["entity.DoctorResponse"] == null ? null : EntityDoctorResponse.fromJson(json["entity.DoctorResponse"]),
        entityDoctorWorkTime: json["entity.DoctorWorkTime"] == null ? null : WorkTime.fromJson(json["entity.DoctorWorkTime"]),
        entityDynamicsCircle: json["entity.DynamicsCircle"] == null ? null : EntityDynamicsCircle.fromJson(json["entity.DynamicsCircle"]),
        entityDynamicsHeight: json["entity.DynamicsHeight"] == null ? null : EntityDynamicsHeight.fromJson(json["entity.DynamicsHeight"]),
        entityDynamicsWeight: json["entity.DynamicsWeight"] == null ? null : EntityDynamicsWeight.fromJson(json["entity.DynamicsWeight"]),
        entityFeedback: json["entity.Feedback"] == null ? null : EntityFeedback.fromJson(json["entity.Feedback"]),
        entityFeeding: json["entity.Feeding"] == null ? null : EntityFeeding.fromJson(json["entity.Feeding"]),
        entityFood: json["entity.Food"] == null ? null : EntityFood.fromJson(json["entity.Food"]),
        entityFoodHistory: json["entity.FoodHistory"] == null ? null : EntityFoodHistory.fromJson(json["entity.FoodHistory"]),
        entityFoodHistoryTotal: json["entity.FoodHistoryTotal"] == null ? null : EntityFoodHistoryTotal.fromJson(json["entity.FoodHistoryTotal"]),
        entityGender: json["entity.Gender"] == null ? null : EntityChildbirthClass.fromJson(json["entity.Gender"]),
        entityGetCircle: json["entity.GetCircle"] == null ? null : EntityGetCircle.fromJson(json["entity.GetCircle"]),
        entityGetHeight: json["entity.GetHeight"] == null ? null : EntityGetEight.fromJson(json["entity.GetHeight"]),
        entityGetWeight: json["entity.GetWeight"] == null ? null : EntityGetEight.fromJson(json["entity.GetWeight"]),
        entityGroupChat: json["entity.GroupChat"] == null ? null : EntityGroupChat.fromJson(json["entity.GroupChat"]),
        entityGroupsChat: json["entity.GroupsChat"] == null ? null : EntityGroupsChat.fromJson(json["entity.GroupsChat"]),
        entityHeight: json["entity.Height"] == null ? null : EntityCircle.fromJson(json["entity.Height"]),
        entityHistoryCircle: json["entity.HistoryCircle"] == null ? null : EntityHistory.fromJson(json["entity.HistoryCircle"]),
        entityHistoryHeight: json["entity.HistoryHeight"] == null ? null : EntityHistory.fromJson(json["entity.HistoryHeight"]),
        entityHistoryWeight: json["entity.HistoryWeight"] == null ? null : EntityHistory.fromJson(json["entity.HistoryWeight"]),
        entityInsertLure: json["entity.InsertLure"] == null ? null : EntityInsertLure.fromJson(json["entity.InsertLure"]),
        entityLureHistory: json["entity.LureHistory"] == null ? null : EntityLureHistory.fromJson(json["entity.LureHistory"]),
        entityLureHistoryTotal: json["entity.LureHistoryTotal"] == null ? null : EntityLureHistoryTotal.fromJson(json["entity.LureHistoryTotal"]),
        entityMainDoctor: json["entity.MainDoctor"] == null ? null : EntityMainDoctor.fromJson(json["entity.MainDoctor"]),
        entityMainDrug: json["entity.MainDrug"] == null ? null : EntityMainDrug.fromJson(json["entity.MainDrug"]),
        entityMessage: json["entity.Message"] == null ? null : ChildUpdateDto.fromJson(json["entity.Message"]),
        entityMessageDto: json["entity.MessageDTO"] == null ? null : EntityMessageDto.fromJson(json["entity.MessageDTO"]),
        entityMessageResp: json["entity.MessageResp"] == null ? null : EntityMessage.fromJson(json["entity.MessageResp"]),
        entityMessageWithReply: json["entity.MessageWithReply"] == null ? null : EntityMessage.fromJson(json["entity.MessageWithReply"]),
        entityNotification: json["entity.Notification"] == null ? null : EntityNotification.fromJson(json["entity.Notification"]),
        entityOnlineSchool: json["entity.OnlineSchool"] == null ? null : EntityOnlineSchool.fromJson(json["entity.OnlineSchool"]),
        entityOnlineSchoolCourse: json["entity.OnlineSchoolCourse"] == null ? null : EntityOnlineSchoolCourse.fromJson(json["entity.OnlineSchoolCourse"]),
        entityOnlineSchoolNumber: json["entity.OnlineSchoolNumber"] == null ? null : EntityOnlineSchoolNumber.fromJson(json["entity.OnlineSchoolNumber"]),
        entityOnlineSchoolResponse: json["entity.OnlineSchoolResponse"] == null ? null : EntityOnlineSchoolResponse.fromJson(json["entity.OnlineSchoolResponse"]),
        entityPromocode: json["entity.Promocode"] == null ? null : EntityPromocode.fromJson(json["entity.Promocode"]),
        entityPumpingHistory: json["entity.PumpingHistory"] == null ? null : EntityChestHistoryClass.fromJson(json["entity.PumpingHistory"]),
        entityPumpingHistoryTotal: json["entity.PumpingHistoryTotal"] == null ? null : EntityPumpingHistoryTotal.fromJson(json["entity.PumpingHistoryTotal"]),
        entityRole: json["entity.Role"] == null ? null : EntityChildbirthClass.fromJson(json["entity.Role"]),
        entitySingleChat: json["entity.SingleChat"] == null ? null : EntitySingleChat.fromJson(json["entity.SingleChat"]),
        entitySleep: json["entity.Sleep"] == null ? null : EntityCryClass.fromJson(json["entity.Sleep"]),
        entitySleepHistory: json["entity.SleepHistory"] == null ? null : EntityCryHistoryClass.fromJson(json["entity.SleepHistory"]),
        entitySleepHistoryTotal: json["entity.SleepHistoryTotal"] == null ? null : EntityHistoryTotal.fromJson(json["entity.SleepHistoryTotal"]),
        entityStatAccountBuy: json["entity.StatAccountBuy"] == null ? null : EntityStatAccountBuy.fromJson(json["entity.StatAccountBuy"]),
        entityState: json["entity.State"] == null ? null : EntityChildbirthClass.fromJson(json["entity.State"]),
        entityStatus: json["entity.Status"] == null ? null : EntityChildbirthClass.fromJson(json["entity.Status"]),
        entityStatusOfChild: json["entity.StatusOfChild"] == null ? null : EntityStatusOfChild.fromJson(json["entity.StatusOfChild"]),
        entityTable: json["entity.Table"] == null ? null : EntityTable.fromJson(json["entity.Table"]),
        entityTableCircle: json["entity.TableCircle"] == null ? null : EntityTableCircle.fromJson(json["entity.TableCircle"]),
        entityTableFeed: json["entity.TableFeed"] == null ? null : EntityTableFeed.fromJson(json["entity.TableFeed"]),
        entityTableFeedTotal: json["entity.TableFeedTotal"] == null ? null : EntityTableFeedTotal.fromJson(json["entity.TableFeedTotal"]),
        entityTableHeight: json["entity.TableHeight"] == null ? null : EntityTableHeight.fromJson(json["entity.TableHeight"]),
        entityTableSleepCryTotal: json["entity.TableSleepCryTotal"] == null ? null : EntityTableSleepCryTotal.fromJson(json["entity.TableSleepCryTotal"]),
        entityTableWeight: json["entity.TableWeight"] == null ? null : EntityTableWeight.fromJson(json["entity.TableWeight"]),
        entityTag: json["entity.Tag"] == null ? null : EntityAgeCategoryClass.fromJson(json["entity.Tag"]),
        entityTemperatureHistory: json["entity.TemperatureHistory"] == null ? null : EntityTemperatureHistory.fromJson(json["entity.TemperatureHistory"]),
        entityTemperatureHistoryTotal: json["entity.TemperatureHistoryTotal"] == null ? null : EntityTemperatureHistoryTotal.fromJson(json["entity.TemperatureHistoryTotal"]),
        entityUserResponse: json["entity.UserResponse"] == null ? null : Response.fromJson(json["entity.UserResponse"]),
        entityVaccinationMain: json["entity.VaccinationMain"] == null ? null : EntityVaccinationMain.fromJson(json["entity.VaccinationMain"]),
        entityWatcher: json["entity.Watcher"] == null ? null : ChildUpdateDto.fromJson(json["entity.Watcher"]),
        entityWeight: json["entity.Weight"] == null ? null : EntityCircle.fromJson(json["entity.Weight"]),
        feedGetDto: json["feed.getDTO"] == null ? null : GetDto.fromJson(json["feed.getDTO"]),
        feedGetFeedingResponse: json["feed.getFeedingResponse"] == null ? null : ArticleArticleWriterResponse.fromJson(json["feed.getFeedingResponse"]),
        feedGetFoodResponse: json["feed.getFoodResponse"] == null ? null : ArticleArticleWriterResponse.fromJson(json["feed.getFoodResponse"]),
        feedInsertChestDto: json["feed.insertChestDTO"] == null ? null : FeedInsertChestDto.fromJson(json["feed.insertChestDTO"]),
        feedInsertFoodDto: json["feed.insertFoodDTO"] == null ? null : FeedInsertFoodDto.fromJson(json["feed.insertFoodDTO"]),
        feedInsertLureDto: json["feed.insertLureDTO"] == null ? null : FeedInsertLureDto.fromJson(json["feed.insertLureDTO"]),
        feedInsertPumpingDto: json["feed.insertPumpingDTO"] == null ? null : FeedInsertPumpingDto.fromJson(json["feed.insertPumpingDTO"]),
        feedResponseHistoryChest: json["feed.responseHistoryChest"] == null ? null : ArticleArticleWriterResponse.fromJson(json["feed.responseHistoryChest"]),
        feedResponseHistoryFood: json["feed.responseHistoryFood"] == null ? null : ArticleArticleWriterResponse.fromJson(json["feed.responseHistoryFood"]),
        feedResponseHistoryLure: json["feed.responseHistoryLure"] == null ? null : ArticleArticleWriterResponse.fromJson(json["feed.responseHistoryLure"]),
        feedResponseHistoryPumping: json["feed.responseHistoryPumping"] == null ? null : ArticleArticleWriterResponse.fromJson(json["feed.responseHistoryPumping"]),
        feedResponseHistoryTable: json["feed.responseHistoryTable"] == null ? null : ArticleArticleWriterResponse.fromJson(json["feed.responseHistoryTable"]),
        feedResponseInsertDto: json["feed.responseInsertDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["feed.responseInsertDTO"]),
        feedbackChatResponse: json["feedback.chatResponse"] == null ? null : ChatResponse.fromJson(json["feedback.chatResponse"]),
        feedbackCreateDto: json["feedback.createDTO"] == null ? null : FeedbackCreateDto.fromJson(json["feedback.createDTO"]),
        feedbackResponseCreate: json["feedback.responseCreate"] == null ? null : ArticleResponseArticleId.fromJson(json["feedback.responseCreate"]),
        geoCitiesResponse: json["geo.citiesResponse"] == null ? null : GeoCitiesResponse.fromJson(json["geo.citiesResponse"]),
        geoCountriesResponse: json["geo.countriesResponse"] == null ? null : GeoCountriesResponse.fromJson(json["geo.countriesResponse"]),
        growthResponseInsert: json["growth.ResponseInsert"] == null ? null : ArticleResponseArticleId.fromJson(json["growth.ResponseInsert"]),
        growthChangeNotesCircleDto: json["growth.changeNotesCircleDTO"] == null ? null : GrowthChangeNotesDto.fromJson(json["growth.changeNotesCircleDTO"]),
        growthChangeNotesHeightDto: json["growth.changeNotesHeightDTO"] == null ? null : GrowthChangeNotesDto.fromJson(json["growth.changeNotesHeightDTO"]),
        growthChangeNotesWeightDto: json["growth.changeNotesWeightDTO"] == null ? null : GrowthChangeNotesDto.fromJson(json["growth.changeNotesWeightDTO"]),
        growthChangeStatsCircleDto: json["growth.changeStatsCircleDTO"] == null ? null : GrowthChangeStatsDto.fromJson(json["growth.changeStatsCircleDTO"]),
        growthChangeStatsHeightDto: json["growth.changeStatsHeightDTO"] == null ? null : GrowthChangeStatsDto.fromJson(json["growth.changeStatsHeightDTO"]),
        growthChangeStatsWeightDto: json["growth.changeStatsWeightDTO"] == null ? null : GrowthChangeStatsDto.fromJson(json["growth.changeStatsWeightDTO"]),
        growthDeleteCircleDto: json["growth.deleteCircleDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["growth.deleteCircleDTO"]),
        growthDeleteHeightDto: json["growth.deleteHeightDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["growth.deleteHeightDTO"]),
        growthDeleteWeightDto: json["growth.deleteWeightDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["growth.deleteWeightDTO"]),
        growthDtoGetCircleById: json["growth.dtoGetCircleByID"] == null ? null : GrowthDtoGetCircleById.fromJson(json["growth.dtoGetCircleByID"]),
        growthDtoGetHeightById: json["growth.dtoGetHeightByID"] == null ? null : GrowthDtoGetHeightById.fromJson(json["growth.dtoGetHeightByID"]),
        growthDtoGetWeightById: json["growth.dtoGetWeightByID"] == null ? null : GrowthDtoGetWeightById.fromJson(json["growth.dtoGetWeightByID"]),
        growthGetCircleResponse: json["growth.getCircleResponse"] == null ? null : GrowthGetCircleResponse.fromJson(json["growth.getCircleResponse"]),
        growthGetHeightResponse: json["growth.getHeightResponse"] == null ? null : GrowthGetCircleResponse.fromJson(json["growth.getHeightResponse"]),
        growthGetTableResponse: json["growth.getTableResponse"] == null ? null : ArticleArticleWriterResponse.fromJson(json["growth.getTableResponse"]),
        growthGetWeightResponse: json["growth.getWeightResponse"] == null ? null : GrowthGetCircleResponse.fromJson(json["growth.getWeightResponse"]),
        growthInsertCircleDto: json["growth.insertCircleDTO"] == null ? null : EntityCircle.fromJson(json["growth.insertCircleDTO"]),
        growthInsertHeightDto: json["growth.insertHeightDTO"] == null ? null : EntityCircle.fromJson(json["growth.insertHeightDTO"]),
        growthInsertWeightDto: json["growth.insertWeightDTO"] == null ? null : EntityCircle.fromJson(json["growth.insertWeightDTO"]),
        growthResponseGetCircle: json["growth.responseGetCircle"] == null ? null : GrowthGetCircleResponse.fromJson(json["growth.responseGetCircle"]),
        growthResponseGetHeight: json["growth.responseGetHeight"] == null ? null : GrowthGetCircleResponse.fromJson(json["growth.responseGetHeight"]),
        growthResponseGetWeight: json["growth.responseGetWeight"] == null ? null : GrowthGetCircleResponse.fromJson(json["growth.responseGetWeight"]),
        growthResponseHistoryCircle: json["growth.responseHistoryCircle"] == null ? null : ArticleArticleWriterResponse.fromJson(json["growth.responseHistoryCircle"]),
        growthResponseHistoryHeight: json["growth.responseHistoryHeight"] == null ? null : ArticleArticleWriterResponse.fromJson(json["growth.responseHistoryHeight"]),
        growthResponseHistoryWeight: json["growth.responseHistoryWeight"] == null ? null : ArticleArticleWriterResponse.fromJson(json["growth.responseHistoryWeight"]),
        healthCompletedDrug: json["health.completedDrug"] == null ? null : HealthCompletedDrug.fromJson(json["health.completedDrug"]),
        healthDeleteConsDoctor: json["health.deleteConsDoctor"] == null ? null : DiapersDeleteDiaper.fromJson(json["health.deleteConsDoctor"]),
        healthDeleteDrug: json["health.deleteDrug"] == null ? null : DiapersDeleteDiaper.fromJson(json["health.deleteDrug"]),
        healthDeleteVaccination: json["health.deleteVaccination"] == null ? null : DiapersDeleteDiaper.fromJson(json["health.deleteVaccination"]),
        healthInsertTemperatureDto: json["health.insertTemperatureDTO"] == null ? null : HealthInsertTemperatureDto.fromJson(json["health.insertTemperatureDTO"]),
        healthResponseHistoryTemperature: json["health.responseHistoryTemperature"] == null ? null : ArticleArticleWriterResponse.fromJson(json["health.responseHistoryTemperature"]),
        healthResponseInsertDto: json["health.responseInsertDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["health.responseInsertDTO"]),
        healthResponseListConsDoctor: json["health.responseListConsDoctor"] == null ? null : ArticleArticleWriterResponse.fromJson(json["health.responseListConsDoctor"]),
        healthResponseListDrug: json["health.responseListDrug"] == null ? null : ArticleArticleWriterResponse.fromJson(json["health.responseListDrug"]),
        healthResponseListVaccination: json["health.responseListVaccination"] == null ? null : ArticleArticleWriterResponse.fromJson(json["health.responseListVaccination"]),
        moderatorCreateDto: json["moderator.CreateDTO"] == null ? null : ModeratorCreateDto.fromJson(json["moderator.CreateDTO"]),
        moderatorChatResponse: json["moderator.chatResponse"] == null ? null : ChatResponse.fromJson(json["moderator.chatResponse"]),
        moderatorChatsDto: json["moderator.chatsDTO"] == null ? null : ChatGetChatWithUserDtoClass.fromJson(json["moderator.chatsDTO"]),
        moderatorDeleteDto: json["moderator.deleteDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["moderator.deleteDTO"]),
        moderatorDeleteFeedbackDto: json["moderator.deleteFeedbackDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["moderator.deleteFeedbackDTO"]),
        moderatorInsertUsersToChat: json["moderator.insertUsersToChat"] == null ? null : ModeratorInsertUsersToChat.fromJson(json["moderator.insertUsersToChat"]),
        moderatorMeResponse: json["moderator.meResponse"] == null ? null : AccountResponseAccountMe.fromJson(json["moderator.meResponse"]),
        moderatorMusicCategoriesDto: json["moderator.musicCategoriesDTO"] == null ? null : ModeratorMusicCategoriesDto.fromJson(json["moderator.musicCategoriesDTO"]),
        moderatorRespPromocode: json["moderator.respPromocode"] == null ? null : ArticleArticleWriterResponse.fromJson(json["moderator.respPromocode"]),
        moderatorResponseDoctor: json["moderator.responseDoctor"] == null ? null : DoctorDoctorResponse.fromJson(json["moderator.responseDoctor"]),
        moderatorResponseListOfFeedback: json["moderator.responseListOfFeedback"] == null ? null : ModeratorResponseListOfFeedback.fromJson(json["moderator.responseListOfFeedback"]),
        moderatorResponseModerator: json["moderator.responseModerator"] == null ? null : AccountResponseAccountMe.fromJson(json["moderator.responseModerator"]),
        moderatorResponseOnlineSchool: json["moderator.responseOnlineSchool"] == null ? null : ResponseOnlineSchool.fromJson(json["moderator.responseOnlineSchool"]),
        moderatorSendAdminNotificationDto: json["moderator.sendAdminNotificationDTO"] == null ? null : ModeratorSendAdminNotificationDto.fromJson(json["moderator.sendAdminNotificationDTO"]),
        moderatorStatReq: json["moderator.statReq"] == null ? null : ModeratorStatReq.fromJson(json["moderator.statReq"]),
        moderatorStatResp: json["moderator.statResp"] == null ? null : ArticleArticleWriterResponse.fromJson(json["moderator.statResp"]),
        moderatorUpdateFeedbackDto: json["moderator.updateFeedbackDTO"] == null ? null : ArticleUpdateStatus.fromJson(json["moderator.updateFeedbackDTO"]),
        moderatorUpdateFeedbackTypeDto: json["moderator.updateFeedbackTypeDTO"] == null ? null : ModeratorUpdateFeedbackTypeDto.fromJson(json["moderator.updateFeedbackTypeDTO"]),
        moderatorUpdateGroupChatName: json["moderator.updateGroupChatName"] == null ? null : ModeratorUpdateGroupChatName.fromJson(json["moderator.updateGroupChatName"]),
        moderatorUpdatePromoCodeDto: json["moderator.updatePromoCodeDTO"] == null ? null : ModeratorUpdatePromoCodeDto.fromJson(json["moderator.updatePromoCodeDTO"]),
        musicUpdateDto: json["music.updateDTO"] == null ? null : MusicUpdateDto.fromJson(json["music.updateDTO"]),
        notificationDeleteDto: json["notification.deleteDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["notification.deleteDTO"]),
        notificationNotificationsResponse: json["notification.notificationsResponse"] == null ? null : NotificationNotificationsResponse.fromJson(json["notification.notificationsResponse"]),
        onlineSchoolReqAddOnlineSchool: json["onlineSchool.reqAddOnlineSchool"] == null ? null : OnlineSchoolReqAddOnlineSchoolClass.fromJson(json["onlineSchool.reqAddOnlineSchool"]),
        onlineSchoolRespOnlineSchoolCourse: json["onlineSchool.respOnlineSchoolCourse"] == null ? null : ArticleArticleWriterResponse.fromJson(json["onlineSchool.respOnlineSchoolCourse"]),
        onlineSchoolRespOnlineSchoolNumbers: json["onlineSchool.respOnlineSchoolNumbers"] == null ? null : ArticleArticleWriterResponse.fromJson(json["onlineSchool.respOnlineSchoolNumbers"]),
        onlineSchoolResponseOnlineSchool: json["onlineSchool.responseOnlineSchool"] == null ? null : ResponseOnlineSchool.fromJson(json["onlineSchool.responseOnlineSchool"]),
        onlineSchoolUpdateDto: json["onlineSchool.updateDTO"] == null ? null : OnlineSchoolUpdateDto.fromJson(json["onlineSchool.updateDTO"]),
        onlineSchoolUpdateNumberDto: json["onlineSchool.updateNumberDTO"] == null ? null : OnlineSchoolUpdateNumberDto.fromJson(json["onlineSchool.updateNumberDTO"]),
        onlineSchoolUpdateOnlineCourseDto: json["onlineSchool.updateOnlineCourseDTO"] == null ? null : OnlineSchoolReqAddOnlineSchoolClass.fromJson(json["onlineSchool.updateOnlineCourseDTO"]),
        paymentGetStatusPaymentReq: json["payment.getStatusPaymentReq"] == null ? null : PaymentGetStatusPaymentReq.fromJson(json["payment.getStatusPaymentReq"]),
        paymentGetStatusPaymentResp: json["payment.getStatusPaymentResp"] == null ? null : PaymentGetStatusPaymentResp.fromJson(json["payment.getStatusPaymentResp"]),
        pdfPdfDto: json["pdf.pdfDTO"] == null ? null : PdfPdfDto.fromJson(json["pdf.pdfDTO"]),
        sleepcryGetCryResponse: json["sleepcry.getCryResponse"] == null ? null : ArticleArticleWriterResponse.fromJson(json["sleepcry.getCryResponse"]),
        sleepcryGetDto: json["sleepcry.getDTO"] == null ? null : GetDto.fromJson(json["sleepcry.getDTO"]),
        sleepcryGetSleepResponse: json["sleepcry.getSleepResponse"] == null ? null : ArticleArticleWriterResponse.fromJson(json["sleepcry.getSleepResponse"]),
        sleepcryInsertCryDto: json["sleepcry.insertCryDTO"] == null ? null : SleepcryInsertDto.fromJson(json["sleepcry.insertCryDTO"]),
        sleepcryInsertSleepDto: json["sleepcry.insertSleepDTO"] == null ? null : SleepcryInsertDto.fromJson(json["sleepcry.insertSleepDTO"]),
        sleepcryResponseHistoryCry: json["sleepcry.responseHistoryCry"] == null ? null : ArticleArticleWriterResponse.fromJson(json["sleepcry.responseHistoryCry"]),
        sleepcryResponseHistorySleep: json["sleepcry.responseHistorySleep"] == null ? null : ArticleArticleWriterResponse.fromJson(json["sleepcry.responseHistorySleep"]),
        sleepcryResponseHistoryTable: json["sleepcry.responseHistoryTable"] == null ? null : ArticleArticleWriterResponse.fromJson(json["sleepcry.responseHistoryTable"]),
        sleepcryResponseHistoryTablePeriod: json["sleepcry.responseHistoryTablePeriod"] == null ? null : GrowthGetCircleResponse.fromJson(json["sleepcry.responseHistoryTablePeriod"]),
        sleepcryResponseInsertDto: json["sleepcry.responseInsertDTO"] == null ? null : ArticleResponseArticleId.fromJson(json["sleepcry.responseInsertDTO"]),
        tagsCreateDto: json["tags.createDTO"] == null ? null : CategoryInsertCategoryDtoClass.fromJson(json["tags.createDTO"]),
        tagsResponseTags: json["tags.responseTags"] == null ? null : TagsResponseTags.fromJson(json["tags.responseTags"]),
        tagsSetDto: json["tags.setDTO"] == null ? null : TagsSetDto.fromJson(json["tags.setDTO"]),
        tagsUnsetDto: json["tags.unsetDTO"] == null ? null : TagsSetDto.fromJson(json["tags.unsetDTO"]),
        userListResponse: json["user.listResponse"] == null ? null : UserListResponse.fromJson(json["user.listResponse"]),
        userMeResponse: json["user.meResponse"] == null ? null : Response.fromJson(json["user.meResponse"]),
        userUpdateDto: json["user.updateDTO"] == null ? null : RUpdateDto.fromJson(json["user.updateDTO"]),
        watcherResponseGetWatcher: json["watcher.responseGetWatcher"] == null ? null : GrowthGetCircleResponse.fromJson(json["watcher.responseGetWatcher"]),
    );

    Map<String, dynamic> toJson() => {
        "account.responseAccountMe": accountResponseAccountMe?.toJson(),
        "account.updateAvatarResponse": accountUpdateAvatarResponse?.toJson(),
        "article.articleResponse": articleArticleResponse?.toJson(),
        "article.articleWithCategoryRequest": articleArticleWithCategoryRequest?.toJson(),
        "article.articleWriter": articleArticleWriter?.toJson(),
        "article.articleWriterResponse": articleArticleWriterResponse?.toJson(),
        "article.countArticleCat": articleCountArticleCat?.toJson(),
        "article.deleteFavoriteArticle": articleDeleteFavoriteArticle?.toJson(),
        "article.getArticleForYou": articleGetArticleForYou?.toJson(),
        "article.getFavoriteArticle": articleGetFavoriteArticle?.toJson(),
        "article.imagesResponse": articleImagesResponse?.toJson(),
        "article.responseArticleID": articleResponseArticleId?.toJson(),
        "article.responseArticles": articleResponseArticles?.toJson(),
        "article.responsePhoto": articleResponsePhoto?.toJson(),
        "article.updateStatus": articleUpdateStatus?.toJson(),
        "auth.sendPhoneCodeDTO": authSendPhoneCodeDto?.toJson(),
        "auth.signInDTO": authSignInDto?.toJson(),
        "auth.signInResponse": authSignInResponse?.toJson(),
        "auth.signUpDTO": authSignUpDto?.toJson(),
        "auth.signUpResponse": authSignUpResponse?.toJson(),
        "auth.updatePhoneDTO": authUpdatePhoneDto?.toJson(),
        "category.insertCategoryDTO": categoryInsertCategoryDto?.toJson(),
        "category.responseDTO": categoryResponseDto?.toJson(),
        "category.responseListOfAgeCategory": categoryResponseListOfAgeCategory?.toJson(),
        "category.responseListOfCategory": categoryResponseListOfCategory?.toJson(),
        "chat.allChatsResponse": chatAllChatsResponse?.toJson(),
        "chat.chatResponse": chatChatResponse?.toJson(),
        "chat.chatsResponse": chatChatsResponse?.toJson(),
        "chat.fileResponse": chatFileResponse?.toJson(),
        "chat.getChatWithUserDTO": chatGetChatWithUserDto?.toJson(),
        "chat.groupChatsResponse": chatGroupChatsResponse?.toJson(),
        "chat.messagesResponse": chatMessagesResponse?.toJson(),
        "chat.responseGetAllMembersInChats": chatResponseGetAllMembersInChats?.toJson(),
        "chat.searchDTO": chatSearchDto?.toJson(),
        "chat.searchInChatResp": chatSearchInChatResp?.toJson(),
        "child.createDTO": childCreateDto?.toJson(),
        "child.deleteAvatar": childDeleteAvatar?.toJson(),
        "child.deleteDTO": childDeleteDto?.toJson(),
        "child.statusResponse": childStatusResponse?.toJson(),
        "child.updateAvatarResponse": childUpdateAvatarResponse?.toJson(),
        "child.updateDTO": childUpdateDto?.toJson(),
        "consultation.SetDTO": consultationSetDto?.toJson(),
        "consultation.UpdateDTO": consultationUpdateDto?.toJson(),
        "consultation.getResponse": consultationGetResponse?.toJson(),
        "consultation.listResponse": consultationListResponse?.toJson(),
        "diapers.createDiaperDTO": diapersCreateDiaperDto?.toJson(),
        "diapers.deleteDiaper": diapersDeleteDiaper?.toJson(),
        "diapers.getDTO": diapersGetDto?.toJson(),
        "diapers.responseInsertDTO": diapersResponseInsertDto?.toJson(),
        "diapers.responseListDiapers": diapersResponseListDiapers?.toJson(),
        "diapers.updateDiaperDTO": diapersUpdateDiaperDto?.toJson(),
        "doctor.deleteDTO": doctorDeleteDto?.toJson(),
        "doctor.doctorResponse": doctorDoctorResponse?.toJson(),
        "doctor.doctorsResponse": doctorDoctorsResponse?.toJson(),
        "doctor.updateDTO": doctorUpdateDto?.toJson(),
        "doctor.updateWorkTime": doctorUpdateWorkTime?.toJson(),
        "entity.Account": entityAccount?.toJson(),
        "entity.AccountMe": entityAccountMe?.toJson(),
        "entity.AgeCategory": entityAgeCategory?.toJson(),
        "entity.ArticleImage": entityArticleImage?.toJson(),
        "entity.ArticleResponse": entityArticleResponse?.toJson(),
        "entity.ArticleWriter": entityArticleWriter?.toJson(),
        "entity.BaseUser": entityBaseUser?.toJson(),
        "entity.BodyResponse": entityBodyResponse?.toJson(),
        "entity.Category": entityCategory?.toJson(),
        "entity.ChestHistory": entityChestHistory?.toJson(),
        "entity.ChestHistoryTotal": entityChestHistoryTotal?.toJson(),
        "entity.Child": entityChild?.toJson(),
        "entity.Childbirth": entityChildbirth?.toJson(),
        "entity.Circle": entityCircle?.toJson(),
        "entity.City": entityCity?.toJson(),
        "entity.ConsultationResponse": entityConsultationResponse?.toJson(),
        "entity.Country": entityCountry?.toJson(),
        "entity.Cry": entityCry?.toJson(),
        "entity.CryAndSleep": entityCryAndSleep?.toJson(),
        "entity.CryHistory": entityCryHistory?.toJson(),
        "entity.CryHistoryTotal": entityCryHistoryTotal?.toJson(),
        "entity.CurrentCircle": entityCurrentCircle?.toJson(),
        "entity.CurrentCircleStruct": entityCurrentCircleStruct?.toJson(),
        "entity.CurrentHeight": entityCurrentHeight?.toJson(),
        "entity.CurrentHeightStruct": entityCurrentHeightStruct?.toJson(),
        "entity.CurrentWeightStruct": entityCurrentWeightStruct?.toJson(),
        "entity.CurrentWight": entityCurrentWight?.toJson(),
        "entity.DiapersMain": entityDiapersMain?.toJson(),
        "entity.DiapersSubMain": entityDiapersSubMain?.toJson(),
        "entity.DoctorBase": entityDoctorBase?.toJson(),
        "entity.DoctorResponse": entityDoctorResponse?.toJson(),
        "entity.DoctorWorkTime": entityDoctorWorkTime?.toJson(),
        "entity.DynamicsCircle": entityDynamicsCircle?.toJson(),
        "entity.DynamicsHeight": entityDynamicsHeight?.toJson(),
        "entity.DynamicsWeight": entityDynamicsWeight?.toJson(),
        "entity.Feedback": entityFeedback?.toJson(),
        "entity.Feeding": entityFeeding?.toJson(),
        "entity.Food": entityFood?.toJson(),
        "entity.FoodHistory": entityFoodHistory?.toJson(),
        "entity.FoodHistoryTotal": entityFoodHistoryTotal?.toJson(),
        "entity.Gender": entityGender?.toJson(),
        "entity.GetCircle": entityGetCircle?.toJson(),
        "entity.GetHeight": entityGetHeight?.toJson(),
        "entity.GetWeight": entityGetWeight?.toJson(),
        "entity.GroupChat": entityGroupChat?.toJson(),
        "entity.GroupsChat": entityGroupsChat?.toJson(),
        "entity.Height": entityHeight?.toJson(),
        "entity.HistoryCircle": entityHistoryCircle?.toJson(),
        "entity.HistoryHeight": entityHistoryHeight?.toJson(),
        "entity.HistoryWeight": entityHistoryWeight?.toJson(),
        "entity.InsertLure": entityInsertLure?.toJson(),
        "entity.LureHistory": entityLureHistory?.toJson(),
        "entity.LureHistoryTotal": entityLureHistoryTotal?.toJson(),
        "entity.MainDoctor": entityMainDoctor?.toJson(),
        "entity.MainDrug": entityMainDrug?.toJson(),
        "entity.Message": entityMessage?.toJson(),
        "entity.MessageDTO": entityMessageDto?.toJson(),
        "entity.MessageResp": entityMessageResp?.toJson(),
        "entity.MessageWithReply": entityMessageWithReply?.toJson(),
        "entity.Notification": entityNotification?.toJson(),
        "entity.OnlineSchool": entityOnlineSchool?.toJson(),
        "entity.OnlineSchoolCourse": entityOnlineSchoolCourse?.toJson(),
        "entity.OnlineSchoolNumber": entityOnlineSchoolNumber?.toJson(),
        "entity.OnlineSchoolResponse": entityOnlineSchoolResponse?.toJson(),
        "entity.Promocode": entityPromocode?.toJson(),
        "entity.PumpingHistory": entityPumpingHistory?.toJson(),
        "entity.PumpingHistoryTotal": entityPumpingHistoryTotal?.toJson(),
        "entity.Role": entityRole?.toJson(),
        "entity.SingleChat": entitySingleChat?.toJson(),
        "entity.Sleep": entitySleep?.toJson(),
        "entity.SleepHistory": entitySleepHistory?.toJson(),
        "entity.SleepHistoryTotal": entitySleepHistoryTotal?.toJson(),
        "entity.StatAccountBuy": entityStatAccountBuy?.toJson(),
        "entity.State": entityState?.toJson(),
        "entity.Status": entityStatus?.toJson(),
        "entity.StatusOfChild": entityStatusOfChild?.toJson(),
        "entity.Table": entityTable?.toJson(),
        "entity.TableCircle": entityTableCircle?.toJson(),
        "entity.TableFeed": entityTableFeed?.toJson(),
        "entity.TableFeedTotal": entityTableFeedTotal?.toJson(),
        "entity.TableHeight": entityTableHeight?.toJson(),
        "entity.TableSleepCryTotal": entityTableSleepCryTotal?.toJson(),
        "entity.TableWeight": entityTableWeight?.toJson(),
        "entity.Tag": entityTag?.toJson(),
        "entity.TemperatureHistory": entityTemperatureHistory?.toJson(),
        "entity.TemperatureHistoryTotal": entityTemperatureHistoryTotal?.toJson(),
        "entity.UserResponse": entityUserResponse?.toJson(),
        "entity.VaccinationMain": entityVaccinationMain?.toJson(),
        "entity.Watcher": entityWatcher?.toJson(),
        "entity.Weight": entityWeight?.toJson(),
        "feed.getDTO": feedGetDto?.toJson(),
        "feed.getFeedingResponse": feedGetFeedingResponse?.toJson(),
        "feed.getFoodResponse": feedGetFoodResponse?.toJson(),
        "feed.insertChestDTO": feedInsertChestDto?.toJson(),
        "feed.insertFoodDTO": feedInsertFoodDto?.toJson(),
        "feed.insertLureDTO": feedInsertLureDto?.toJson(),
        "feed.insertPumpingDTO": feedInsertPumpingDto?.toJson(),
        "feed.responseHistoryChest": feedResponseHistoryChest?.toJson(),
        "feed.responseHistoryFood": feedResponseHistoryFood?.toJson(),
        "feed.responseHistoryLure": feedResponseHistoryLure?.toJson(),
        "feed.responseHistoryPumping": feedResponseHistoryPumping?.toJson(),
        "feed.responseHistoryTable": feedResponseHistoryTable?.toJson(),
        "feed.responseInsertDTO": feedResponseInsertDto?.toJson(),
        "feedback.chatResponse": feedbackChatResponse?.toJson(),
        "feedback.createDTO": feedbackCreateDto?.toJson(),
        "feedback.responseCreate": feedbackResponseCreate?.toJson(),
        "geo.citiesResponse": geoCitiesResponse?.toJson(),
        "geo.countriesResponse": geoCountriesResponse?.toJson(),
        "growth.ResponseInsert": growthResponseInsert?.toJson(),
        "growth.changeNotesCircleDTO": growthChangeNotesCircleDto?.toJson(),
        "growth.changeNotesHeightDTO": growthChangeNotesHeightDto?.toJson(),
        "growth.changeNotesWeightDTO": growthChangeNotesWeightDto?.toJson(),
        "growth.changeStatsCircleDTO": growthChangeStatsCircleDto?.toJson(),
        "growth.changeStatsHeightDTO": growthChangeStatsHeightDto?.toJson(),
        "growth.changeStatsWeightDTO": growthChangeStatsWeightDto?.toJson(),
        "growth.deleteCircleDTO": growthDeleteCircleDto?.toJson(),
        "growth.deleteHeightDTO": growthDeleteHeightDto?.toJson(),
        "growth.deleteWeightDTO": growthDeleteWeightDto?.toJson(),
        "growth.dtoGetCircleByID": growthDtoGetCircleById?.toJson(),
        "growth.dtoGetHeightByID": growthDtoGetHeightById?.toJson(),
        "growth.dtoGetWeightByID": growthDtoGetWeightById?.toJson(),
        "growth.getCircleResponse": growthGetCircleResponse?.toJson(),
        "growth.getHeightResponse": growthGetHeightResponse?.toJson(),
        "growth.getTableResponse": growthGetTableResponse?.toJson(),
        "growth.getWeightResponse": growthGetWeightResponse?.toJson(),
        "growth.insertCircleDTO": growthInsertCircleDto?.toJson(),
        "growth.insertHeightDTO": growthInsertHeightDto?.toJson(),
        "growth.insertWeightDTO": growthInsertWeightDto?.toJson(),
        "growth.responseGetCircle": growthResponseGetCircle?.toJson(),
        "growth.responseGetHeight": growthResponseGetHeight?.toJson(),
        "growth.responseGetWeight": growthResponseGetWeight?.toJson(),
        "growth.responseHistoryCircle": growthResponseHistoryCircle?.toJson(),
        "growth.responseHistoryHeight": growthResponseHistoryHeight?.toJson(),
        "growth.responseHistoryWeight": growthResponseHistoryWeight?.toJson(),
        "health.completedDrug": healthCompletedDrug?.toJson(),
        "health.deleteConsDoctor": healthDeleteConsDoctor?.toJson(),
        "health.deleteDrug": healthDeleteDrug?.toJson(),
        "health.deleteVaccination": healthDeleteVaccination?.toJson(),
        "health.insertTemperatureDTO": healthInsertTemperatureDto?.toJson(),
        "health.responseHistoryTemperature": healthResponseHistoryTemperature?.toJson(),
        "health.responseInsertDTO": healthResponseInsertDto?.toJson(),
        "health.responseListConsDoctor": healthResponseListConsDoctor?.toJson(),
        "health.responseListDrug": healthResponseListDrug?.toJson(),
        "health.responseListVaccination": healthResponseListVaccination?.toJson(),
        "moderator.CreateDTO": moderatorCreateDto?.toJson(),
        "moderator.chatResponse": moderatorChatResponse?.toJson(),
        "moderator.chatsDTO": moderatorChatsDto?.toJson(),
        "moderator.deleteDTO": moderatorDeleteDto?.toJson(),
        "moderator.deleteFeedbackDTO": moderatorDeleteFeedbackDto?.toJson(),
        "moderator.insertUsersToChat": moderatorInsertUsersToChat?.toJson(),
        "moderator.meResponse": moderatorMeResponse?.toJson(),
        "moderator.musicCategoriesDTO": moderatorMusicCategoriesDto?.toJson(),
        "moderator.respPromocode": moderatorRespPromocode?.toJson(),
        "moderator.responseDoctor": moderatorResponseDoctor?.toJson(),
        "moderator.responseListOfFeedback": moderatorResponseListOfFeedback?.toJson(),
        "moderator.responseModerator": moderatorResponseModerator?.toJson(),
        "moderator.responseOnlineSchool": moderatorResponseOnlineSchool?.toJson(),
        "moderator.sendAdminNotificationDTO": moderatorSendAdminNotificationDto?.toJson(),
        "moderator.statReq": moderatorStatReq?.toJson(),
        "moderator.statResp": moderatorStatResp?.toJson(),
        "moderator.updateFeedbackDTO": moderatorUpdateFeedbackDto?.toJson(),
        "moderator.updateFeedbackTypeDTO": moderatorUpdateFeedbackTypeDto?.toJson(),
        "moderator.updateGroupChatName": moderatorUpdateGroupChatName?.toJson(),
        "moderator.updatePromoCodeDTO": moderatorUpdatePromoCodeDto?.toJson(),
        "music.updateDTO": musicUpdateDto?.toJson(),
        "notification.deleteDTO": notificationDeleteDto?.toJson(),
        "notification.notificationsResponse": notificationNotificationsResponse?.toJson(),
        "onlineSchool.reqAddOnlineSchool": onlineSchoolReqAddOnlineSchool?.toJson(),
        "onlineSchool.respOnlineSchoolCourse": onlineSchoolRespOnlineSchoolCourse?.toJson(),
        "onlineSchool.respOnlineSchoolNumbers": onlineSchoolRespOnlineSchoolNumbers?.toJson(),
        "onlineSchool.responseOnlineSchool": onlineSchoolResponseOnlineSchool?.toJson(),
        "onlineSchool.updateDTO": onlineSchoolUpdateDto?.toJson(),
        "onlineSchool.updateNumberDTO": onlineSchoolUpdateNumberDto?.toJson(),
        "onlineSchool.updateOnlineCourseDTO": onlineSchoolUpdateOnlineCourseDto?.toJson(),
        "payment.getStatusPaymentReq": paymentGetStatusPaymentReq?.toJson(),
        "payment.getStatusPaymentResp": paymentGetStatusPaymentResp?.toJson(),
        "pdf.pdfDTO": pdfPdfDto?.toJson(),
        "sleepcry.getCryResponse": sleepcryGetCryResponse?.toJson(),
        "sleepcry.getDTO": sleepcryGetDto?.toJson(),
        "sleepcry.getSleepResponse": sleepcryGetSleepResponse?.toJson(),
        "sleepcry.insertCryDTO": sleepcryInsertCryDto?.toJson(),
        "sleepcry.insertSleepDTO": sleepcryInsertSleepDto?.toJson(),
        "sleepcry.responseHistoryCry": sleepcryResponseHistoryCry?.toJson(),
        "sleepcry.responseHistorySleep": sleepcryResponseHistorySleep?.toJson(),
        "sleepcry.responseHistoryTable": sleepcryResponseHistoryTable?.toJson(),
        "sleepcry.responseHistoryTablePeriod": sleepcryResponseHistoryTablePeriod?.toJson(),
        "sleepcry.responseInsertDTO": sleepcryResponseInsertDto?.toJson(),
        "tags.createDTO": tagsCreateDto?.toJson(),
        "tags.responseTags": tagsResponseTags?.toJson(),
        "tags.setDTO": tagsSetDto?.toJson(),
        "tags.unsetDTO": tagsUnsetDto?.toJson(),
        "user.listResponse": userListResponse?.toJson(),
        "user.meResponse": userMeResponse?.toJson(),
        "user.updateDTO": userUpdateDto?.toJson(),
        "watcher.responseGetWatcher": watcherResponseGetWatcher?.toJson(),
    };
}

class AccountResponseAccountMe {
    final AccountResponseAccountMeType? type;
    final AccountResponseAccountMeProperties? properties;

    AccountResponseAccountMe({
        this.type,
        this.properties,
    });

    factory AccountResponseAccountMe.fromJson(Map<String, dynamic> json) => AccountResponseAccountMe(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : AccountResponseAccountMeProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class AccountResponseAccountMeProperties {
    final AccountElement? account;

    AccountResponseAccountMeProperties({
        this.account,
    });

    factory AccountResponseAccountMeProperties.fromJson(Map<String, dynamic> json) => AccountResponseAccountMeProperties(
        account: json["account"] == null ? null : AccountElement.fromJson(json["account"]),
    );

    Map<String, dynamic> toJson() => {
        "account": account?.toJson(),
    };
}

class AccountElement {
    final String? ref;

    AccountElement({
        this.ref,
    });

    factory AccountElement.fromJson(Map<String, dynamic> json) => AccountElement(
        ref: json["\u0024ref"],
    );

    Map<String, dynamic> toJson() => {
        "\u0024ref": ref,
    };
}

enum AccountResponseAccountMeType {
    OBJECT
}

final accountResponseAccountMeTypeValues = EnumValues({
    "object": AccountResponseAccountMeType.OBJECT
});

class UpdateAvatarResponse {
    final AccountResponseAccountMeType? type;
    final AccountUpdateAvatarResponseProperties? properties;

    UpdateAvatarResponse({
        this.type,
        this.properties,
    });

    factory UpdateAvatarResponse.fromJson(Map<String, dynamic> json) => UpdateAvatarResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : AccountUpdateAvatarResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class AccountUpdateAvatarResponseProperties {
    final Property? avatar;

    AccountUpdateAvatarResponseProperties({
        this.avatar,
    });

    factory AccountUpdateAvatarResponseProperties.fromJson(Map<String, dynamic> json) => AccountUpdateAvatarResponseProperties(
        avatar: json["avatar"] == null ? null : Property.fromJson(json["avatar"]),
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar?.toJson(),
    };
}

class Property {
    final PropertyType? type;

    Property({
        this.type,
    });

    factory Property.fromJson(Map<String, dynamic> json) => Property(
        type: propertyTypeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "type": propertyTypeValues.reverse[type],
    };
}

enum PropertyType {
    API_KEY,
    BOOLEAN,
    FILE,
    INTEGER,
    NUMBER,
    STRING
}

final propertyTypeValues = EnumValues({
    "apiKey": PropertyType.API_KEY,
    "boolean": PropertyType.BOOLEAN,
    "file": PropertyType.FILE,
    "integer": PropertyType.INTEGER,
    "number": PropertyType.NUMBER,
    "string": PropertyType.STRING
});

class ArticleArticleResponse {
    final AccountResponseAccountMeType? type;
    final ArticleArticleResponseProperties? properties;

    ArticleArticleResponse({
        this.type,
        this.properties,
    });

    factory ArticleArticleResponse.fromJson(Map<String, dynamic> json) => ArticleArticleResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleArticleResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleArticleResponseProperties {
    final AccountElement? article;

    ArticleArticleResponseProperties({
        this.article,
    });

    factory ArticleArticleResponseProperties.fromJson(Map<String, dynamic> json) => ArticleArticleResponseProperties(
        article: json["article"] == null ? null : AccountElement.fromJson(json["article"]),
    );

    Map<String, dynamic> toJson() => {
        "article": article?.toJson(),
    };
}

class ArticleArticleWithCategoryRequest {
    final AccountResponseAccountMeType? type;
    final ArticleArticleWithCategoryRequestProperties? properties;

    ArticleArticleWithCategoryRequest({
        this.type,
        this.properties,
    });

    factory ArticleArticleWithCategoryRequest.fromJson(Map<String, dynamic> json) => ArticleArticleWithCategoryRequest(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleArticleWithCategoryRequestProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleArticleWithCategoryRequestProperties {
    final CategoryClass? category;
    final CategoryClass? categoryAg;

    ArticleArticleWithCategoryRequestProperties({
        this.category,
        this.categoryAg,
    });

    factory ArticleArticleWithCategoryRequestProperties.fromJson(Map<String, dynamic> json) => ArticleArticleWithCategoryRequestProperties(
        category: json["category"] == null ? null : CategoryClass.fromJson(json["category"]),
        categoryAg: json["categoryAg"] == null ? null : CategoryClass.fromJson(json["categoryAg"]),
    );

    Map<String, dynamic> toJson() => {
        "category": category?.toJson(),
        "categoryAg": categoryAg?.toJson(),
    };
}

class CategoryClass {
    final CategoryAgType? type;
    final Property? items;

    CategoryClass({
        this.type,
        this.items,
    });

    factory CategoryClass.fromJson(Map<String, dynamic> json) => CategoryClass(
        type: categoryAgTypeValues.map[json["type"]]!,
        items: json["items"] == null ? null : Property.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": categoryAgTypeValues.reverse[type],
        "items": items?.toJson(),
    };
}

enum CategoryAgType {
    ARRAY,
    FILE,
    STRING
}

final categoryAgTypeValues = EnumValues({
    "array": CategoryAgType.ARRAY,
    "file": CategoryAgType.FILE,
    "string": CategoryAgType.STRING
});

class ArticleArticleWriter {
    final AccountResponseAccountMeType? type;
    final ArticleArticleWriterProperties? properties;

    ArticleArticleWriter({
        this.type,
        this.properties,
    });

    factory ArticleArticleWriter.fromJson(Map<String, dynamic> json) => ArticleArticleWriter(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleArticleWriterProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleArticleWriterProperties {
    final Property? counter;
    final AccountElement? writer;

    ArticleArticleWriterProperties({
        this.counter,
        this.writer,
    });

    factory ArticleArticleWriterProperties.fromJson(Map<String, dynamic> json) => ArticleArticleWriterProperties(
        counter: json["counter"] == null ? null : Property.fromJson(json["counter"]),
        writer: json["writer"] == null ? null : AccountElement.fromJson(json["writer"]),
    );

    Map<String, dynamic> toJson() => {
        "counter": counter?.toJson(),
        "writer": writer?.toJson(),
    };
}

class ArticleArticleWriterResponse {
    final AccountResponseAccountMeType? type;
    final ArticleArticleWriterResponseProperties? properties;

    ArticleArticleWriterResponse({
        this.type,
        this.properties,
    });

    factory ArticleArticleWriterResponse.fromJson(Map<String, dynamic> json) => ArticleArticleWriterResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleArticleWriterResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleArticleWriterResponseProperties {
    final ImagesClass? list;

    ArticleArticleWriterResponseProperties({
        this.list,
    });

    factory ArticleArticleWriterResponseProperties.fromJson(Map<String, dynamic> json) => ArticleArticleWriterResponseProperties(
        list: json["list"] == null ? null : ImagesClass.fromJson(json["list"]),
    );

    Map<String, dynamic> toJson() => {
        "list": list?.toJson(),
    };
}

class ImagesClass {
    final CategoryAgType? type;
    final AccountElement? items;

    ImagesClass({
        this.type,
        this.items,
    });

    factory ImagesClass.fromJson(Map<String, dynamic> json) => ImagesClass(
        type: categoryAgTypeValues.map[json["type"]]!,
        items: json["items"] == null ? null : AccountElement.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": categoryAgTypeValues.reverse[type],
        "items": items?.toJson(),
    };
}

class ArticleCountArticleCat {
    final AccountResponseAccountMeType? type;
    final ArticleCountArticleCatProperties? properties;

    ArticleCountArticleCat({
        this.type,
        this.properties,
    });

    factory ArticleCountArticleCat.fromJson(Map<String, dynamic> json) => ArticleCountArticleCat(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleCountArticleCatProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleCountArticleCatProperties {
    final PurpleList? list;

    ArticleCountArticleCatProperties({
        this.list,
    });

    factory ArticleCountArticleCatProperties.fromJson(Map<String, dynamic> json) => ArticleCountArticleCatProperties(
        list: json["list"] == null ? null : PurpleList.fromJson(json["list"]),
    );

    Map<String, dynamic> toJson() => {
        "list": list?.toJson(),
    };
}

class PurpleList {
    final AccountResponseAccountMeType? type;
    final Property? additionalProperties;

    PurpleList({
        this.type,
        this.additionalProperties,
    });

    factory PurpleList.fromJson(Map<String, dynamic> json) => PurpleList(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        additionalProperties: json["additionalProperties"] == null ? null : Property.fromJson(json["additionalProperties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "additionalProperties": additionalProperties?.toJson(),
    };
}

class ArticleDeleteFavoriteArticle {
    final AccountResponseAccountMeType? type;
    final ArticleDeleteFavoriteArticleProperties? properties;

    ArticleDeleteFavoriteArticle({
        this.type,
        this.properties,
    });

    factory ArticleDeleteFavoriteArticle.fromJson(Map<String, dynamic> json) => ArticleDeleteFavoriteArticle(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleDeleteFavoriteArticleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleDeleteFavoriteArticleProperties {
    final Property? articleId;

    ArticleDeleteFavoriteArticleProperties({
        this.articleId,
    });

    factory ArticleDeleteFavoriteArticleProperties.fromJson(Map<String, dynamic> json) => ArticleDeleteFavoriteArticleProperties(
        articleId: json["article_id"] == null ? null : Property.fromJson(json["article_id"]),
    );

    Map<String, dynamic> toJson() => {
        "article_id": articleId?.toJson(),
    };
}

class ArticleGetFavoriteArticle {
    final AccountResponseAccountMeType? type;
    final ArticleGetFavoriteArticleProperties? properties;

    ArticleGetFavoriteArticle({
        this.type,
        this.properties,
    });

    factory ArticleGetFavoriteArticle.fromJson(Map<String, dynamic> json) => ArticleGetFavoriteArticle(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleGetFavoriteArticleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleGetFavoriteArticleProperties {
    final CategoryClass? article;

    ArticleGetFavoriteArticleProperties({
        this.article,
    });

    factory ArticleGetFavoriteArticleProperties.fromJson(Map<String, dynamic> json) => ArticleGetFavoriteArticleProperties(
        article: json["article"] == null ? null : CategoryClass.fromJson(json["article"]),
    );

    Map<String, dynamic> toJson() => {
        "article": article?.toJson(),
    };
}

class ArticleImagesResponse {
    final AccountResponseAccountMeType? type;
    final ArticleImagesResponseProperties? properties;

    ArticleImagesResponse({
        this.type,
        this.properties,
    });

    factory ArticleImagesResponse.fromJson(Map<String, dynamic> json) => ArticleImagesResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleImagesResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleImagesResponseProperties {
    final ImagesClass? images;

    ArticleImagesResponseProperties({
        this.images,
    });

    factory ArticleImagesResponseProperties.fromJson(Map<String, dynamic> json) => ArticleImagesResponseProperties(
        images: json["images"] == null ? null : ImagesClass.fromJson(json["images"]),
    );

    Map<String, dynamic> toJson() => {
        "images": images?.toJson(),
    };
}

class ArticleResponseArticleId {
    final AccountResponseAccountMeType? type;
    final ArticleResponseArticleIdProperties? properties;

    ArticleResponseArticleId({
        this.type,
        this.properties,
    });

    factory ArticleResponseArticleId.fromJson(Map<String, dynamic> json) => ArticleResponseArticleId(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleResponseArticleIdProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleResponseArticleIdProperties {
    final Property? id;

    ArticleResponseArticleIdProperties({
        this.id,
    });

    factory ArticleResponseArticleIdProperties.fromJson(Map<String, dynamic> json) => ArticleResponseArticleIdProperties(
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id?.toJson(),
    };
}

class ArticleResponseArticles {
    final AccountResponseAccountMeType? type;
    final ArticleResponseArticlesProperties? properties;

    ArticleResponseArticles({
        this.type,
        this.properties,
    });

    factory ArticleResponseArticles.fromJson(Map<String, dynamic> json) => ArticleResponseArticles(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleResponseArticlesProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleResponseArticlesProperties {
    final ImagesClass? articles;

    ArticleResponseArticlesProperties({
        this.articles,
    });

    factory ArticleResponseArticlesProperties.fromJson(Map<String, dynamic> json) => ArticleResponseArticlesProperties(
        articles: json["articles"] == null ? null : ImagesClass.fromJson(json["articles"]),
    );

    Map<String, dynamic> toJson() => {
        "articles": articles?.toJson(),
    };
}

class ArticleResponsePhoto {
    final AccountResponseAccountMeType? type;
    final ArticleResponsePhotoProperties? properties;

    ArticleResponsePhoto({
        this.type,
        this.properties,
    });

    factory ArticleResponsePhoto.fromJson(Map<String, dynamic> json) => ArticleResponsePhoto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleResponsePhotoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleResponsePhotoProperties {
    final Property? filename;

    ArticleResponsePhotoProperties({
        this.filename,
    });

    factory ArticleResponsePhotoProperties.fromJson(Map<String, dynamic> json) => ArticleResponsePhotoProperties(
        filename: json["filename"] == null ? null : Property.fromJson(json["filename"]),
    );

    Map<String, dynamic> toJson() => {
        "filename": filename?.toJson(),
    };
}

class ArticleUpdateStatus {
    final AccountResponseAccountMeType? type;
    final ArticleUpdateStatusProperties? properties;

    ArticleUpdateStatus({
        this.type,
        this.properties,
    });

    factory ArticleUpdateStatus.fromJson(Map<String, dynamic> json) => ArticleUpdateStatus(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ArticleUpdateStatusProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ArticleUpdateStatusProperties {
    final Property? id;
    final Property? status;

    ArticleUpdateStatusProperties({
        this.id,
        this.status,
    });

    factory ArticleUpdateStatusProperties.fromJson(Map<String, dynamic> json) => ArticleUpdateStatusProperties(
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        status: json["status"] == null ? null : Property.fromJson(json["status"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id?.toJson(),
        "status": status?.toJson(),
    };
}

class AuthSendPhoneCodeDto {
    final AccountResponseAccountMeType? type;
    final List<String>? required;
    final AuthSendPhoneCodeDtoProperties? properties;

    AuthSendPhoneCodeDto({
        this.type,
        this.required,
        this.properties,
    });

    factory AuthSendPhoneCodeDto.fromJson(Map<String, dynamic> json) => AuthSendPhoneCodeDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        required: json["required"] == null ? [] : List<String>.from(json["required"]!.map((x) => x)),
        properties: json["properties"] == null ? null : AuthSendPhoneCodeDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "required": required == null ? [] : List<dynamic>.from(required!.map((x) => x)),
        "properties": properties?.toJson(),
    };
}

class AuthSendPhoneCodeDtoProperties {
    final Phone? phone;

    AuthSendPhoneCodeDtoProperties({
        this.phone,
    });

    factory AuthSendPhoneCodeDtoProperties.fromJson(Map<String, dynamic> json) => AuthSendPhoneCodeDtoProperties(
        phone: json["phone"] == null ? null : Phone.fromJson(json["phone"]),
    );

    Map<String, dynamic> toJson() => {
        "phone": phone?.toJson(),
    };
}

class Phone {
    final PropertyType? type;
    final String? example;

    Phone({
        this.type,
        this.example,
    });

    factory Phone.fromJson(Map<String, dynamic> json) => Phone(
        type: propertyTypeValues.map[json["type"]]!,
        example: json["example"],
    );

    Map<String, dynamic> toJson() => {
        "type": propertyTypeValues.reverse[type],
        "example": example,
    };
}

class AuthSignInDto {
    final AccountResponseAccountMeType? type;
    final List<String>? required;
    final AuthSignInDtoProperties? properties;

    AuthSignInDto({
        this.type,
        this.required,
        this.properties,
    });

    factory AuthSignInDto.fromJson(Map<String, dynamic> json) => AuthSignInDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        required: json["required"] == null ? [] : List<String>.from(json["required"]!.map((x) => x)),
        properties: json["properties"] == null ? null : AuthSignInDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "required": required == null ? [] : List<dynamic>.from(required!.map((x) => x)),
        "properties": properties?.toJson(),
    };
}

class AuthSignInDtoProperties {
    final Phone? code;
    final Property? fcmToken;
    final Phone? phone;

    AuthSignInDtoProperties({
        this.code,
        this.fcmToken,
        this.phone,
    });

    factory AuthSignInDtoProperties.fromJson(Map<String, dynamic> json) => AuthSignInDtoProperties(
        code: json["code"] == null ? null : Phone.fromJson(json["code"]),
        fcmToken: json["fcm_token"] == null ? null : Property.fromJson(json["fcm_token"]),
        phone: json["phone"] == null ? null : Phone.fromJson(json["phone"]),
    );

    Map<String, dynamic> toJson() => {
        "code": code?.toJson(),
        "fcm_token": fcmToken?.toJson(),
        "phone": phone?.toJson(),
    };
}

class AuthSignInResponse {
    final AccountResponseAccountMeType? type;
    final AuthSignInResponseProperties? properties;

    AuthSignInResponse({
        this.type,
        this.properties,
    });

    factory AuthSignInResponse.fromJson(Map<String, dynamic> json) => AuthSignInResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : AuthSignInResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class AuthSignInResponseProperties {
    final Phone? refreshToken;
    final Phone? role;
    final Phone? state;
    final Phone? status;

    AuthSignInResponseProperties({
        this.refreshToken,
        this.role,
        this.state,
        this.status,
    });

    factory AuthSignInResponseProperties.fromJson(Map<String, dynamic> json) => AuthSignInResponseProperties(
        refreshToken: json["refresh_token"] == null ? null : Phone.fromJson(json["refresh_token"]),
        role: json["role"] == null ? null : Phone.fromJson(json["role"]),
        state: json["state"] == null ? null : Phone.fromJson(json["state"]),
        status: json["status"] == null ? null : Phone.fromJson(json["status"]),
    );

    Map<String, dynamic> toJson() => {
        "refresh_token": refreshToken?.toJson(),
        "role": role?.toJson(),
        "state": state?.toJson(),
        "status": status?.toJson(),
    };
}

class AuthSignUpDto {
    final AccountResponseAccountMeType? type;
    final AuthSignUpDtoProperties? properties;

    AuthSignUpDto({
        this.type,
        this.properties,
    });

    factory AuthSignUpDto.fromJson(Map<String, dynamic> json) => AuthSignUpDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : AuthSignUpDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class AuthSignUpDtoProperties {
    final PropertiesAccount? account;
    final Child? child;
    final User? user;

    AuthSignUpDtoProperties({
        this.account,
        this.child,
        this.user,
    });

    factory AuthSignUpDtoProperties.fromJson(Map<String, dynamic> json) => AuthSignUpDtoProperties(
        account: json["account"] == null ? null : PropertiesAccount.fromJson(json["account"]),
        child: json["child"] == null ? null : Child.fromJson(json["child"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "account": account?.toJson(),
        "child": child?.toJson(),
        "user": user?.toJson(),
    };
}

class PropertiesAccount {
    final AccountResponseAccountMeType? type;
    final List<String>? required;
    final AccountProperties? properties;

    PropertiesAccount({
        this.type,
        this.required,
        this.properties,
    });

    factory PropertiesAccount.fromJson(Map<String, dynamic> json) => PropertiesAccount(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        required: json["required"] == null ? [] : List<String>.from(json["required"]!.map((x) => x)),
        properties: json["properties"] == null ? null : AccountProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "required": required == null ? [] : List<dynamic>.from(required!.map((x) => x)),
        "properties": properties?.toJson(),
    };
}

class AccountProperties {
    final Property? fcmToken;
    final Phone? firstName;
    final Role? gender;
    final Phone? lastName;
    final Phone? phone;
    final Phone? secondName;

    AccountProperties({
        this.fcmToken,
        this.firstName,
        this.gender,
        this.lastName,
        this.phone,
        this.secondName,
    });

    factory AccountProperties.fromJson(Map<String, dynamic> json) => AccountProperties(
        fcmToken: json["fcm_token"] == null ? null : Property.fromJson(json["fcm_token"]),
        firstName: json["first_name"] == null ? null : Phone.fromJson(json["first_name"]),
        gender: json["gender"] == null ? null : Role.fromJson(json["gender"]),
        lastName: json["last_name"] == null ? null : Phone.fromJson(json["last_name"]),
        phone: json["phone"] == null ? null : Phone.fromJson(json["phone"]),
        secondName: json["second_name"] == null ? null : Phone.fromJson(json["second_name"]),
    );

    Map<String, dynamic> toJson() => {
        "fcm_token": fcmToken?.toJson(),
        "first_name": firstName?.toJson(),
        "gender": gender?.toJson(),
        "last_name": lastName?.toJson(),
        "phone": phone?.toJson(),
        "second_name": secondName?.toJson(),
    };
}

class Role {
    final List<AccountElement>? allOf;
    final String? example;

    Role({
        this.allOf,
        this.example,
    });

    factory Role.fromJson(Map<String, dynamic> json) => Role(
        allOf: json["allOf"] == null ? [] : List<AccountElement>.from(json["allOf"]!.map((x) => AccountElement.fromJson(x))),
        example: json["example"],
    );

    Map<String, dynamic> toJson() => {
        "allOf": allOf == null ? [] : List<dynamic>.from(allOf!.map((x) => x.toJson())),
        "example": example,
    };
}

class Child {
    final AccountResponseAccountMeType? type;
    final List<String>? required;
    final ChildProperties? properties;

    Child({
        this.type,
        this.required,
        this.properties,
    });

    factory Child.fromJson(Map<String, dynamic> json) => Child(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        required: json["required"] == null ? [] : List<String>.from(json["required"]!.map((x) => x)),
        properties: json["properties"] == null ? null : ChildProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "required": required == null ? [] : List<dynamic>.from(required!.map((x) => x)),
        "properties": properties?.toJson(),
    };
}

class ChildProperties {
    final Phone? birthDate;
    final Role? childbirth;
    final ChildbirthWithComplications? childbirthWithComplications;
    final Phone? firstName;
    final Gender? gender;
    final Chest? headCirc;
    final Chest? height;
    final Phone? secondName;
    final Chest? weight;

    ChildProperties({
        this.birthDate,
        this.childbirth,
        this.childbirthWithComplications,
        this.firstName,
        this.gender,
        this.headCirc,
        this.height,
        this.secondName,
        this.weight,
    });

    factory ChildProperties.fromJson(Map<String, dynamic> json) => ChildProperties(
        birthDate: json["birth_date"] == null ? null : Phone.fromJson(json["birth_date"]),
        childbirth: json["childbirth"] == null ? null : Role.fromJson(json["childbirth"]),
        childbirthWithComplications: json["childbirth_with_complications"] == null ? null : ChildbirthWithComplications.fromJson(json["childbirth_with_complications"]),
        firstName: json["first_name"] == null ? null : Phone.fromJson(json["first_name"]),
        gender: json["gender"] == null ? null : Gender.fromJson(json["gender"]),
        headCirc: json["head_circ"] == null ? null : Chest.fromJson(json["head_circ"]),
        height: json["height"] == null ? null : Chest.fromJson(json["height"]),
        secondName: json["second_name"] == null ? null : Phone.fromJson(json["second_name"]),
        weight: json["weight"] == null ? null : Chest.fromJson(json["weight"]),
    );

    Map<String, dynamic> toJson() => {
        "birth_date": birthDate?.toJson(),
        "childbirth": childbirth?.toJson(),
        "childbirth_with_complications": childbirthWithComplications?.toJson(),
        "first_name": firstName?.toJson(),
        "gender": gender?.toJson(),
        "head_circ": headCirc?.toJson(),
        "height": height?.toJson(),
        "second_name": secondName?.toJson(),
        "weight": weight?.toJson(),
    };
}

class ChildbirthWithComplications {
    final PropertyType? type;
    final bool? example;

    ChildbirthWithComplications({
        this.type,
        this.example,
    });

    factory ChildbirthWithComplications.fromJson(Map<String, dynamic> json) => ChildbirthWithComplications(
        type: propertyTypeValues.map[json["type"]]!,
        example: json["example"],
    );

    Map<String, dynamic> toJson() => {
        "type": propertyTypeValues.reverse[type],
        "example": example,
    };
}

class Gender {
    final PropertyType? type;
    final List<String>? genderEnum;
    final String? example;

    Gender({
        this.type,
        this.genderEnum,
        this.example,
    });

    factory Gender.fromJson(Map<String, dynamic> json) => Gender(
        type: propertyTypeValues.map[json["type"]]!,
        genderEnum: json["enum"] == null ? [] : List<String>.from(json["enum"]!.map((x) => x)),
        example: json["example"],
    );

    Map<String, dynamic> toJson() => {
        "type": propertyTypeValues.reverse[type],
        "enum": genderEnum == null ? [] : List<dynamic>.from(genderEnum!.map((x) => x)),
        "example": example,
    };
}

class Chest {
    final PropertyType? type;
    final double? example;

    Chest({
        this.type,
        this.example,
    });

    factory Chest.fromJson(Map<String, dynamic> json) => Chest(
        type: propertyTypeValues.map[json["type"]]!,
        example: json["example"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "type": propertyTypeValues.reverse[type],
        "example": example,
    };
}

class User {
    final AccountResponseAccountMeType? type;
    final UserProperties? properties;

    User({
        this.type,
        this.properties,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : UserProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class UserProperties {
    final Phone? city;
    final Roles? roles;

    UserProperties({
        this.city,
        this.roles,
    });

    factory UserProperties.fromJson(Map<String, dynamic> json) => UserProperties(
        city: json["city"] == null ? null : Phone.fromJson(json["city"]),
        roles: json["roles"] == null ? null : Roles.fromJson(json["roles"]),
    );

    Map<String, dynamic> toJson() => {
        "city": city?.toJson(),
        "roles": roles?.toJson(),
    };
}

class Roles {
    final CategoryAgType? type;
    final Property? items;
    final List<String>? example;

    Roles({
        this.type,
        this.items,
        this.example,
    });

    factory Roles.fromJson(Map<String, dynamic> json) => Roles(
        type: categoryAgTypeValues.map[json["type"]]!,
        items: json["items"] == null ? null : Property.fromJson(json["items"]),
        example: json["example"] == null ? [] : List<String>.from(json["example"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "type": categoryAgTypeValues.reverse[type],
        "items": items?.toJson(),
        "example": example == null ? [] : List<dynamic>.from(example!.map((x) => x)),
    };
}

class AuthSignUpResponse {
    final AccountResponseAccountMeType? type;
    final AuthSignUpResponseProperties? properties;

    AuthSignUpResponse({
        this.type,
        this.properties,
    });

    factory AuthSignUpResponse.fromJson(Map<String, dynamic> json) => AuthSignUpResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : AuthSignUpResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class AuthSignUpResponseProperties {
    final Phone? accessToken;
    final AccountElement? account;
    final AccountElement? chat;
    final Role? role;
    final Role? status;

    AuthSignUpResponseProperties({
        this.accessToken,
        this.account,
        this.chat,
        this.role,
        this.status,
    });

    factory AuthSignUpResponseProperties.fromJson(Map<String, dynamic> json) => AuthSignUpResponseProperties(
        accessToken: json["access_token"] == null ? null : Phone.fromJson(json["access_token"]),
        account: json["account"] == null ? null : AccountElement.fromJson(json["account"]),
        chat: json["chat"] == null ? null : AccountElement.fromJson(json["chat"]),
        role: json["role"] == null ? null : Role.fromJson(json["role"]),
        status: json["status"] == null ? null : Role.fromJson(json["status"]),
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken?.toJson(),
        "account": account?.toJson(),
        "chat": chat?.toJson(),
        "role": role?.toJson(),
        "status": status?.toJson(),
    };
}

class AuthUpdatePhoneDto {
    final AccountResponseAccountMeType? type;
    final List<String>? required;
    final AuthUpdatePhoneDtoProperties? properties;

    AuthUpdatePhoneDto({
        this.type,
        this.required,
        this.properties,
    });

    factory AuthUpdatePhoneDto.fromJson(Map<String, dynamic> json) => AuthUpdatePhoneDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        required: json["required"] == null ? [] : List<String>.from(json["required"]!.map((x) => x)),
        properties: json["properties"] == null ? null : AuthUpdatePhoneDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "required": required == null ? [] : List<dynamic>.from(required!.map((x) => x)),
        "properties": properties?.toJson(),
    };
}

class AuthUpdatePhoneDtoProperties {
    final Phone? code;
    final Phone? phone;

    AuthUpdatePhoneDtoProperties({
        this.code,
        this.phone,
    });

    factory AuthUpdatePhoneDtoProperties.fromJson(Map<String, dynamic> json) => AuthUpdatePhoneDtoProperties(
        code: json["code"] == null ? null : Phone.fromJson(json["code"]),
        phone: json["phone"] == null ? null : Phone.fromJson(json["phone"]),
    );

    Map<String, dynamic> toJson() => {
        "code": code?.toJson(),
        "phone": phone?.toJson(),
    };
}

class CategoryInsertCategoryDtoClass {
    final AccountResponseAccountMeType? type;
    final CategoryInsertCategoryDtoProperties? properties;

    CategoryInsertCategoryDtoClass({
        this.type,
        this.properties,
    });

    factory CategoryInsertCategoryDtoClass.fromJson(Map<String, dynamic> json) => CategoryInsertCategoryDtoClass(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : CategoryInsertCategoryDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class CategoryInsertCategoryDtoProperties {
    final Property? name;

    CategoryInsertCategoryDtoProperties({
        this.name,
    });

    factory CategoryInsertCategoryDtoProperties.fromJson(Map<String, dynamic> json) => CategoryInsertCategoryDtoProperties(
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name?.toJson(),
    };
}

class ChatAllChatsResponse {
    final AccountResponseAccountMeType? type;
    final ChatAllChatsResponseProperties? properties;

    ChatAllChatsResponse({
        this.type,
        this.properties,
    });

    factory ChatAllChatsResponse.fromJson(Map<String, dynamic> json) => ChatAllChatsResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ChatAllChatsResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ChatAllChatsResponseProperties {
    final ImagesClass? chats;
    final ImagesClass? groupChat;

    ChatAllChatsResponseProperties({
        this.chats,
        this.groupChat,
    });

    factory ChatAllChatsResponseProperties.fromJson(Map<String, dynamic> json) => ChatAllChatsResponseProperties(
        chats: json["chats"] == null ? null : ImagesClass.fromJson(json["chats"]),
        groupChat: json["group_chat"] == null ? null : ImagesClass.fromJson(json["group_chat"]),
    );

    Map<String, dynamic> toJson() => {
        "chats": chats?.toJson(),
        "group_chat": groupChat?.toJson(),
    };
}

class ChatResponse {
    final AccountResponseAccountMeType? type;
    final ChatChatResponseProperties? properties;

    ChatResponse({
        this.type,
        this.properties,
    });

    factory ChatResponse.fromJson(Map<String, dynamic> json) => ChatResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ChatChatResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ChatChatResponseProperties {
    final AccountElement? chat;

    ChatChatResponseProperties({
        this.chat,
    });

    factory ChatChatResponseProperties.fromJson(Map<String, dynamic> json) => ChatChatResponseProperties(
        chat: json["chat"] == null ? null : AccountElement.fromJson(json["chat"]),
    );

    Map<String, dynamic> toJson() => {
        "chat": chat?.toJson(),
    };
}

class ChatChatsResponse {
    final AccountResponseAccountMeType? type;
    final ChatChatsResponseProperties? properties;

    ChatChatsResponse({
        this.type,
        this.properties,
    });

    factory ChatChatsResponse.fromJson(Map<String, dynamic> json) => ChatChatsResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ChatChatsResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ChatChatsResponseProperties {
    final ImagesClass? chats;

    ChatChatsResponseProperties({
        this.chats,
    });

    factory ChatChatsResponseProperties.fromJson(Map<String, dynamic> json) => ChatChatsResponseProperties(
        chats: json["chats"] == null ? null : ImagesClass.fromJson(json["chats"]),
    );

    Map<String, dynamic> toJson() => {
        "chats": chats?.toJson(),
    };
}

class ChatFileResponse {
    final AccountResponseAccountMeType? type;
    final ChatFileResponseProperties? properties;

    ChatFileResponse({
        this.type,
        this.properties,
    });

    factory ChatFileResponse.fromJson(Map<String, dynamic> json) => ChatFileResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ChatFileResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ChatFileResponseProperties {
    final AccountElement? message;

    ChatFileResponseProperties({
        this.message,
    });

    factory ChatFileResponseProperties.fromJson(Map<String, dynamic> json) => ChatFileResponseProperties(
        message: json["message"] == null ? null : AccountElement.fromJson(json["message"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message?.toJson(),
    };
}

class ChatGetChatWithUserDtoClass {
    final AccountResponseAccountMeType? type;
    final ChatGetChatWithUserDtoProperties? properties;

    ChatGetChatWithUserDtoClass({
        this.type,
        this.properties,
    });

    factory ChatGetChatWithUserDtoClass.fromJson(Map<String, dynamic> json) => ChatGetChatWithUserDtoClass(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ChatGetChatWithUserDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ChatGetChatWithUserDtoProperties {
    final Property? accountId;

    ChatGetChatWithUserDtoProperties({
        this.accountId,
    });

    factory ChatGetChatWithUserDtoProperties.fromJson(Map<String, dynamic> json) => ChatGetChatWithUserDtoProperties(
        accountId: json["account_id"] == null ? null : Property.fromJson(json["account_id"]),
    );

    Map<String, dynamic> toJson() => {
        "account_id": accountId?.toJson(),
    };
}

class ChatMessagesResponse {
    final AccountResponseAccountMeType? type;
    final ChatMessagesResponseProperties? properties;

    ChatMessagesResponse({
        this.type,
        this.properties,
    });

    factory ChatMessagesResponse.fromJson(Map<String, dynamic> json) => ChatMessagesResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ChatMessagesResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ChatMessagesResponseProperties {
    final CategoryClass? attached;
    final ImagesClass? messages;

    ChatMessagesResponseProperties({
        this.attached,
        this.messages,
    });

    factory ChatMessagesResponseProperties.fromJson(Map<String, dynamic> json) => ChatMessagesResponseProperties(
        attached: json["attached"] == null ? null : CategoryClass.fromJson(json["attached"]),
        messages: json["messages"] == null ? null : ImagesClass.fromJson(json["messages"]),
    );

    Map<String, dynamic> toJson() => {
        "attached": attached?.toJson(),
        "messages": messages?.toJson(),
    };
}

class ChatResponseGetAllMembersInChats {
    final AccountResponseAccountMeType? type;
    final ChatResponseGetAllMembersInChatsProperties? properties;

    ChatResponseGetAllMembersInChats({
        this.type,
        this.properties,
    });

    factory ChatResponseGetAllMembersInChats.fromJson(Map<String, dynamic> json) => ChatResponseGetAllMembersInChats(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ChatResponseGetAllMembersInChatsProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ChatResponseGetAllMembersInChatsProperties {
    final ImagesClass? account;

    ChatResponseGetAllMembersInChatsProperties({
        this.account,
    });

    factory ChatResponseGetAllMembersInChatsProperties.fromJson(Map<String, dynamic> json) => ChatResponseGetAllMembersInChatsProperties(
        account: json["account"] == null ? null : ImagesClass.fromJson(json["account"]),
    );

    Map<String, dynamic> toJson() => {
        "account": account?.toJson(),
    };
}

class ChatSearchDto {
    final AccountResponseAccountMeType? type;
    final ChatSearchDtoProperties? properties;

    ChatSearchDto({
        this.type,
        this.properties,
    });

    factory ChatSearchDto.fromJson(Map<String, dynamic> json) => ChatSearchDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ChatSearchDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ChatSearchDtoProperties {
    final Property? chatId;
    final Property? typeOfChat;

    ChatSearchDtoProperties({
        this.chatId,
        this.typeOfChat,
    });

    factory ChatSearchDtoProperties.fromJson(Map<String, dynamic> json) => ChatSearchDtoProperties(
        chatId: json["chat_id"] == null ? null : Property.fromJson(json["chat_id"]),
        typeOfChat: json["type_of_chat"] == null ? null : Property.fromJson(json["type_of_chat"]),
    );

    Map<String, dynamic> toJson() => {
        "chat_id": chatId?.toJson(),
        "type_of_chat": typeOfChat?.toJson(),
    };
}

class ChatSearchInChatResp {
    final AccountResponseAccountMeType? type;
    final ChatSearchInChatRespProperties? properties;

    ChatSearchInChatResp({
        this.type,
        this.properties,
    });

    factory ChatSearchInChatResp.fromJson(Map<String, dynamic> json) => ChatSearchInChatResp(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ChatSearchInChatRespProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ChatSearchInChatRespProperties {
    final ImagesClass? message;

    ChatSearchInChatRespProperties({
        this.message,
    });

    factory ChatSearchInChatRespProperties.fromJson(Map<String, dynamic> json) => ChatSearchInChatRespProperties(
        message: json["message"] == null ? null : ImagesClass.fromJson(json["message"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message?.toJson(),
    };
}

class ChildCreateDto {
    final AccountResponseAccountMeType? type;
    final List<String>? required;
    final ChildCreateDtoProperties? properties;

    ChildCreateDto({
        this.type,
        this.required,
        this.properties,
    });

    factory ChildCreateDto.fromJson(Map<String, dynamic> json) => ChildCreateDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        required: json["required"] == null ? [] : List<String>.from(json["required"]!.map((x) => x)),
        properties: json["properties"] == null ? null : ChildCreateDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "required": required == null ? [] : List<dynamic>.from(required!.map((x) => x)),
        "properties": properties?.toJson(),
    };
}

class ChildCreateDtoProperties {
    final Property? birthDate;
    final Phone? childbirth;
    final ChildbirthWithComplications? childbirthWithComplications;
    final Property? firstName;
    final Phone? gender;
    final Property? headCirc;
    final Property? height;
    final Property? info;
    final ChildbirthWithComplications? isTwins;
    final Property? secondName;
    final Property? weight;

    ChildCreateDtoProperties({
        this.birthDate,
        this.childbirth,
        this.childbirthWithComplications,
        this.firstName,
        this.gender,
        this.headCirc,
        this.height,
        this.info,
        this.isTwins,
        this.secondName,
        this.weight,
    });

    factory ChildCreateDtoProperties.fromJson(Map<String, dynamic> json) => ChildCreateDtoProperties(
        birthDate: json["birth_date"] == null ? null : Property.fromJson(json["birth_date"]),
        childbirth: json["childbirth"] == null ? null : Phone.fromJson(json["childbirth"]),
        childbirthWithComplications: json["childbirth_with_complications"] == null ? null : ChildbirthWithComplications.fromJson(json["childbirth_with_complications"]),
        firstName: json["first_name"] == null ? null : Property.fromJson(json["first_name"]),
        gender: json["gender"] == null ? null : Phone.fromJson(json["gender"]),
        headCirc: json["head_circ"] == null ? null : Property.fromJson(json["head_circ"]),
        height: json["height"] == null ? null : Property.fromJson(json["height"]),
        info: json["info"] == null ? null : Property.fromJson(json["info"]),
        isTwins: json["is_twins"] == null ? null : ChildbirthWithComplications.fromJson(json["is_twins"]),
        secondName: json["second_name"] == null ? null : Property.fromJson(json["second_name"]),
        weight: json["weight"] == null ? null : Property.fromJson(json["weight"]),
    );

    Map<String, dynamic> toJson() => {
        "birth_date": birthDate?.toJson(),
        "childbirth": childbirth?.toJson(),
        "childbirth_with_complications": childbirthWithComplications?.toJson(),
        "first_name": firstName?.toJson(),
        "gender": gender?.toJson(),
        "head_circ": headCirc?.toJson(),
        "height": height?.toJson(),
        "info": info?.toJson(),
        "is_twins": isTwins?.toJson(),
        "second_name": secondName?.toJson(),
        "weight": weight?.toJson(),
    };
}

class ChildDelete {
    final AccountResponseAccountMeType? type;
    final List<String>? required;
    final ChildDeleteAvatarProperties? properties;

    ChildDelete({
        this.type,
        this.required,
        this.properties,
    });

    factory ChildDelete.fromJson(Map<String, dynamic> json) => ChildDelete(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        required: json["required"] == null ? [] : List<String>.from(json["required"]!.map((x) => x)),
        properties: json["properties"] == null ? null : ChildDeleteAvatarProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "required": required == null ? [] : List<dynamic>.from(required!.map((x) => x)),
        "properties": properties?.toJson(),
    };
}

class ChildDeleteAvatarProperties {
    final Property? childId;

    ChildDeleteAvatarProperties({
        this.childId,
    });

    factory ChildDeleteAvatarProperties.fromJson(Map<String, dynamic> json) => ChildDeleteAvatarProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
    };
}

class ChildStatusResponse {
    final AccountResponseAccountMeType? type;
    final List<String>? required;
    final ChildStatusResponseProperties? properties;

    ChildStatusResponse({
        this.type,
        this.required,
        this.properties,
    });

    factory ChildStatusResponse.fromJson(Map<String, dynamic> json) => ChildStatusResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        required: json["required"] == null ? [] : List<String>.from(json["required"]!.map((x) => x)),
        properties: json["properties"] == null ? null : ChildStatusResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "required": required == null ? [] : List<dynamic>.from(required!.map((x) => x)),
        "properties": properties?.toJson(),
    };
}

class ChildStatusResponseProperties {
    final AccountElement? status;

    ChildStatusResponseProperties({
        this.status,
    });

    factory ChildStatusResponseProperties.fromJson(Map<String, dynamic> json) => ChildStatusResponseProperties(
        status: json["status"] == null ? null : AccountElement.fromJson(json["status"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status?.toJson(),
    };
}

class ChildUpdateDto {
    final AccountResponseAccountMeType? type;
    final Map<String, Property>? properties;

    ChildUpdateDto({
        this.type,
        this.properties,
    });

    factory ChildUpdateDto.fromJson(Map<String, dynamic> json) => ChildUpdateDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: Map.from(json["properties"]!).map((k, v) => MapEntry<String, Property>(k, Property.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": Map.from(properties!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class ConsultationGetResponse {
    final AccountResponseAccountMeType? type;
    final ConsultationGetResponseProperties? properties;

    ConsultationGetResponse({
        this.type,
        this.properties,
    });

    factory ConsultationGetResponse.fromJson(Map<String, dynamic> json) => ConsultationGetResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ConsultationGetResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ConsultationGetResponseProperties {
    final AccountElement? consultation;

    ConsultationGetResponseProperties({
        this.consultation,
    });

    factory ConsultationGetResponseProperties.fromJson(Map<String, dynamic> json) => ConsultationGetResponseProperties(
        consultation: json["consultation"] == null ? null : AccountElement.fromJson(json["consultation"]),
    );

    Map<String, dynamic> toJson() => {
        "consultation": consultation?.toJson(),
    };
}

class ConsultationListResponse {
    final AccountResponseAccountMeType? type;
    final ConsultationListResponseProperties? properties;

    ConsultationListResponse({
        this.type,
        this.properties,
    });

    factory ConsultationListResponse.fromJson(Map<String, dynamic> json) => ConsultationListResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ConsultationListResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ConsultationListResponseProperties {
    final ImagesClass? consultations;

    ConsultationListResponseProperties({
        this.consultations,
    });

    factory ConsultationListResponseProperties.fromJson(Map<String, dynamic> json) => ConsultationListResponseProperties(
        consultations: json["consultations"] == null ? null : ImagesClass.fromJson(json["consultations"]),
    );

    Map<String, dynamic> toJson() => {
        "consultations": consultations?.toJson(),
    };
}

class ConsultationSetDto {
    final AccountResponseAccountMeType? type;
    final ConsultationSetDtoProperties? properties;

    ConsultationSetDto({
        this.type,
        this.properties,
    });

    factory ConsultationSetDto.fromJson(Map<String, dynamic> json) => ConsultationSetDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ConsultationSetDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ConsultationSetDtoProperties {
    final Phone? day;
    final Phone? doctorId;
    final Phone? slot;
    final Phone? timeWeek;
    final Phone? type;
    final Phone? userId;

    ConsultationSetDtoProperties({
        this.day,
        this.doctorId,
        this.slot,
        this.timeWeek,
        this.type,
        this.userId,
    });

    factory ConsultationSetDtoProperties.fromJson(Map<String, dynamic> json) => ConsultationSetDtoProperties(
        day: json["day"] == null ? null : Phone.fromJson(json["day"]),
        doctorId: json["doctor_id"] == null ? null : Phone.fromJson(json["doctor_id"]),
        slot: json["slot"] == null ? null : Phone.fromJson(json["slot"]),
        timeWeek: json["time_week"] == null ? null : Phone.fromJson(json["time_week"]),
        type: json["type"] == null ? null : Phone.fromJson(json["type"]),
        userId: json["user_id"] == null ? null : Phone.fromJson(json["user_id"]),
    );

    Map<String, dynamic> toJson() => {
        "day": day?.toJson(),
        "doctor_id": doctorId?.toJson(),
        "slot": slot?.toJson(),
        "time_week": timeWeek?.toJson(),
        "type": type?.toJson(),
        "user_id": userId?.toJson(),
    };
}

class ConsultationUpdateDto {
    final AccountResponseAccountMeType? type;
    final ConsultationUpdateDtoProperties? properties;

    ConsultationUpdateDto({
        this.type,
        this.properties,
    });

    factory ConsultationUpdateDto.fromJson(Map<String, dynamic> json) => ConsultationUpdateDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ConsultationUpdateDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ConsultationUpdateDtoProperties {
    final Property? doctorId;
    final Property? status;
    final Property? timeBegin;
    final Property? type;
    final Property? userId;

    ConsultationUpdateDtoProperties({
        this.doctorId,
        this.status,
        this.timeBegin,
        this.type,
        this.userId,
    });

    factory ConsultationUpdateDtoProperties.fromJson(Map<String, dynamic> json) => ConsultationUpdateDtoProperties(
        doctorId: json["doctor_id"] == null ? null : Property.fromJson(json["doctor_id"]),
        status: json["status"] == null ? null : Property.fromJson(json["status"]),
        timeBegin: json["time_begin"] == null ? null : Property.fromJson(json["time_begin"]),
        type: json["type"] == null ? null : Property.fromJson(json["type"]),
        userId: json["user_id"] == null ? null : Property.fromJson(json["user_id"]),
    );

    Map<String, dynamic> toJson() => {
        "doctor_id": doctorId?.toJson(),
        "status": status?.toJson(),
        "time_begin": timeBegin?.toJson(),
        "type": type?.toJson(),
        "user_id": userId?.toJson(),
    };
}

class DiapersCreateDiaperDto {
    final AccountResponseAccountMeType? type;
    final DiapersCreateDiaperDtoProperties? properties;

    DiapersCreateDiaperDto({
        this.type,
        this.properties,
    });

    factory DiapersCreateDiaperDto.fromJson(Map<String, dynamic> json) => DiapersCreateDiaperDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : DiapersCreateDiaperDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class DiapersCreateDiaperDtoProperties {
    final Property? childId;
    final Phone? howMuch;
    final Property? notes;
    final Phone? timeToEnd;
    final Phone? typeOfDiapers;

    DiapersCreateDiaperDtoProperties({
        this.childId,
        this.howMuch,
        this.notes,
        this.timeToEnd,
        this.typeOfDiapers,
    });

    factory DiapersCreateDiaperDtoProperties.fromJson(Map<String, dynamic> json) => DiapersCreateDiaperDtoProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        howMuch: json["how_much"] == null ? null : Phone.fromJson(json["how_much"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        timeToEnd: json["time_to_end"] == null ? null : Phone.fromJson(json["time_to_end"]),
        typeOfDiapers: json["type_of_diapers"] == null ? null : Phone.fromJson(json["type_of_diapers"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
        "how_much": howMuch?.toJson(),
        "notes": notes?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
        "type_of_diapers": typeOfDiapers?.toJson(),
    };
}

class DiapersDeleteDiaper {
    final AccountResponseAccountMeType? type;
    final List<String>? required;
    final ArticleResponseArticleIdProperties? properties;

    DiapersDeleteDiaper({
        this.type,
        this.required,
        this.properties,
    });

    factory DiapersDeleteDiaper.fromJson(Map<String, dynamic> json) => DiapersDeleteDiaper(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        required: json["required"] == null ? [] : List<String>.from(json["required"]!.map((x) => x)),
        properties: json["properties"] == null ? null : ArticleResponseArticleIdProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "required": required == null ? [] : List<dynamic>.from(required!.map((x) => x)),
        "properties": properties?.toJson(),
    };
}

class GetDto {
    final AccountResponseAccountMeType? type;
    final DiapersGetDtoProperties? properties;

    GetDto({
        this.type,
        this.properties,
    });

    factory GetDto.fromJson(Map<String, dynamic> json) => GetDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : DiapersGetDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class DiapersGetDtoProperties {
    final Property? childId;
    final Phone? fromTime;
    final Phone? toTime;

    DiapersGetDtoProperties({
        this.childId,
        this.fromTime,
        this.toTime,
    });

    factory DiapersGetDtoProperties.fromJson(Map<String, dynamic> json) => DiapersGetDtoProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        fromTime: json["from_time"] == null ? null : Phone.fromJson(json["from_time"]),
        toTime: json["to_time"] == null ? null : Phone.fromJson(json["to_time"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
        "from_time": fromTime?.toJson(),
        "to_time": toTime?.toJson(),
    };
}

class DiapersUpdateDiaperDto {
    final AccountResponseAccountMeType? type;
    final DiapersUpdateDiaperDtoProperties? properties;

    DiapersUpdateDiaperDto({
        this.type,
        this.properties,
    });

    factory DiapersUpdateDiaperDto.fromJson(Map<String, dynamic> json) => DiapersUpdateDiaperDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : DiapersUpdateDiaperDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class DiapersUpdateDiaperDtoProperties {
    final Phone? howMuch;
    final Property? id;
    final Property? notes;
    final Phone? timeToEnd;
    final Property? typeOfDiapers;

    DiapersUpdateDiaperDtoProperties({
        this.howMuch,
        this.id,
        this.notes,
        this.timeToEnd,
        this.typeOfDiapers,
    });

    factory DiapersUpdateDiaperDtoProperties.fromJson(Map<String, dynamic> json) => DiapersUpdateDiaperDtoProperties(
        howMuch: json["how_much"] == null ? null : Phone.fromJson(json["how_much"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        timeToEnd: json["time_to_end"] == null ? null : Phone.fromJson(json["time_to_end"]),
        typeOfDiapers: json["type_of_diapers"] == null ? null : Property.fromJson(json["type_of_diapers"]),
    );

    Map<String, dynamic> toJson() => {
        "how_much": howMuch?.toJson(),
        "id": id?.toJson(),
        "notes": notes?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
        "type_of_diapers": typeOfDiapers?.toJson(),
    };
}

class DoctorDoctorResponse {
    final AccountResponseAccountMeType? type;
    final DoctorDoctorResponseProperties? properties;

    DoctorDoctorResponse({
        this.type,
        this.properties,
    });

    factory DoctorDoctorResponse.fromJson(Map<String, dynamic> json) => DoctorDoctorResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : DoctorDoctorResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class DoctorDoctorResponseProperties {
    final AccountElement? doctor;

    DoctorDoctorResponseProperties({
        this.doctor,
    });

    factory DoctorDoctorResponseProperties.fromJson(Map<String, dynamic> json) => DoctorDoctorResponseProperties(
        doctor: json["doctor"] == null ? null : AccountElement.fromJson(json["doctor"]),
    );

    Map<String, dynamic> toJson() => {
        "doctor": doctor?.toJson(),
    };
}

class DoctorDoctorsResponse {
    final AccountResponseAccountMeType? type;
    final DoctorDoctorsResponseProperties? properties;

    DoctorDoctorsResponse({
        this.type,
        this.properties,
    });

    factory DoctorDoctorsResponse.fromJson(Map<String, dynamic> json) => DoctorDoctorsResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : DoctorDoctorsResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class DoctorDoctorsResponseProperties {
    final ImagesClass? doctors;

    DoctorDoctorsResponseProperties({
        this.doctors,
    });

    factory DoctorDoctorsResponseProperties.fromJson(Map<String, dynamic> json) => DoctorDoctorsResponseProperties(
        doctors: json["doctors"] == null ? null : ImagesClass.fromJson(json["doctors"]),
    );

    Map<String, dynamic> toJson() => {
        "doctors": doctors?.toJson(),
    };
}

class RUpdateDto {
    final AccountResponseAccountMeType? type;
    final DoctorUpdateDtoProperties? properties;

    RUpdateDto({
        this.type,
        this.properties,
    });

    factory RUpdateDto.fromJson(Map<String, dynamic> json) => RUpdateDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : DoctorUpdateDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class DoctorUpdateDtoProperties {
    final Phone? email;
    final Phone? firstName;
    final Phone? gender;
    final Phone? info;
    final Phone? lastName;
    final Phone? profession;
    final Phone? secondName;
    final Phone? city;
    final Roles? roles;

    DoctorUpdateDtoProperties({
        this.email,
        this.firstName,
        this.gender,
        this.info,
        this.lastName,
        this.profession,
        this.secondName,
        this.city,
        this.roles,
    });

    factory DoctorUpdateDtoProperties.fromJson(Map<String, dynamic> json) => DoctorUpdateDtoProperties(
        email: json["email"] == null ? null : Phone.fromJson(json["email"]),
        firstName: json["first_name"] == null ? null : Phone.fromJson(json["first_name"]),
        gender: json["gender"] == null ? null : Phone.fromJson(json["gender"]),
        info: json["info"] == null ? null : Phone.fromJson(json["info"]),
        lastName: json["last_name"] == null ? null : Phone.fromJson(json["last_name"]),
        profession: json["profession"] == null ? null : Phone.fromJson(json["profession"]),
        secondName: json["second_name"] == null ? null : Phone.fromJson(json["second_name"]),
        city: json["city"] == null ? null : Phone.fromJson(json["city"]),
        roles: json["roles"] == null ? null : Roles.fromJson(json["roles"]),
    );

    Map<String, dynamic> toJson() => {
        "email": email?.toJson(),
        "first_name": firstName?.toJson(),
        "gender": gender?.toJson(),
        "info": info?.toJson(),
        "last_name": lastName?.toJson(),
        "profession": profession?.toJson(),
        "second_name": secondName?.toJson(),
        "city": city?.toJson(),
        "roles": roles?.toJson(),
    };
}

class WorkTime {
    final AccountResponseAccountMeType? type;
    final DoctorUpdateWorkTimeProperties? properties;

    WorkTime({
        this.type,
        this.properties,
    });

    factory WorkTime.fromJson(Map<String, dynamic> json) => WorkTime(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : DoctorUpdateWorkTimeProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class DoctorUpdateWorkTimeProperties {
    final Day? friday;
    final Day? monday;
    final Day? saturday;
    final Day? sunday;
    final Day? thursday;
    final Day? tuesday;
    final Day? wednesday;
    final Phone? weekStart;
    final Property? accountId;
    final Property? id;

    DoctorUpdateWorkTimeProperties({
        this.friday,
        this.monday,
        this.saturday,
        this.sunday,
        this.thursday,
        this.tuesday,
        this.wednesday,
        this.weekStart,
        this.accountId,
        this.id,
    });

    factory DoctorUpdateWorkTimeProperties.fromJson(Map<String, dynamic> json) => DoctorUpdateWorkTimeProperties(
        friday: json["friday"] == null ? null : Day.fromJson(json["friday"]),
        monday: json["monday"] == null ? null : Day.fromJson(json["monday"]),
        saturday: json["saturday"] == null ? null : Day.fromJson(json["saturday"]),
        sunday: json["sunday"] == null ? null : Day.fromJson(json["sunday"]),
        thursday: json["thursday"] == null ? null : Day.fromJson(json["thursday"]),
        tuesday: json["tuesday"] == null ? null : Day.fromJson(json["tuesday"]),
        wednesday: json["wednesday"] == null ? null : Day.fromJson(json["wednesday"]),
        weekStart: json["week_start"] == null ? null : Phone.fromJson(json["week_start"]),
        accountId: json["account_id"] == null ? null : Property.fromJson(json["account_id"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
    );

    Map<String, dynamic> toJson() => {
        "friday": friday?.toJson(),
        "monday": monday?.toJson(),
        "saturday": saturday?.toJson(),
        "sunday": sunday?.toJson(),
        "thursday": thursday?.toJson(),
        "tuesday": tuesday?.toJson(),
        "wednesday": wednesday?.toJson(),
        "week_start": weekStart?.toJson(),
        "account_id": accountId?.toJson(),
        "id": id?.toJson(),
    };
}

class Day {
    final AccountResponseAccountMeType? type;
    final FridayProperties? properties;

    Day({
        this.type,
        this.properties,
    });

    factory Day.fromJson(Map<String, dynamic> json) => Day(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : FridayProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class FridayProperties {
    final ChildbirthWithComplications? isWork;
    final WorkSlots? workSlots;

    FridayProperties({
        this.isWork,
        this.workSlots,
    });

    factory FridayProperties.fromJson(Map<String, dynamic> json) => FridayProperties(
        isWork: json["is_work"] == null ? null : ChildbirthWithComplications.fromJson(json["is_work"]),
        workSlots: json["work_slots"] == null ? null : WorkSlots.fromJson(json["work_slots"]),
    );

    Map<String, dynamic> toJson() => {
        "is_work": isWork?.toJson(),
        "work_slots": workSlots?.toJson(),
    };
}

class WorkSlots {
    final CategoryAgType? type;
    final Items? items;

    WorkSlots({
        this.type,
        this.items,
    });

    factory WorkSlots.fromJson(Map<String, dynamic> json) => WorkSlots(
        type: categoryAgTypeValues.map[json["type"]]!,
        items: json["items"] == null ? null : Items.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "type": categoryAgTypeValues.reverse[type],
        "items": items?.toJson(),
    };
}

class Items {
    final AccountResponseAccountMeType? type;
    final ItemsProperties? properties;

    Items({
        this.type,
        this.properties,
    });

    factory Items.fromJson(Map<String, dynamic> json) => Items(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ItemsProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ItemsProperties {
    final ChildbirthWithComplications? isBusy;
    final Phone? workSlot;

    ItemsProperties({
        this.isBusy,
        this.workSlot,
    });

    factory ItemsProperties.fromJson(Map<String, dynamic> json) => ItemsProperties(
        isBusy: json["is_busy"] == null ? null : ChildbirthWithComplications.fromJson(json["is_busy"]),
        workSlot: json["work_slot"] == null ? null : Phone.fromJson(json["work_slot"]),
    );

    Map<String, dynamic> toJson() => {
        "is_busy": isBusy?.toJson(),
        "work_slot": workSlot?.toJson(),
    };
}

class EntityAccount {
    final AccountResponseAccountMeType? type;
    final EntityAccountProperties? properties;

    EntityAccount({
        this.type,
        this.properties,
    });

    factory EntityAccount.fromJson(Map<String, dynamic> json) => EntityAccount(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityAccountProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityAccountProperties {
    final Property? avatar;
    final Property? createdAt;
    final Property? email;
    final Property? favoriteArticle;
    final Property? firstName;
    final AccountElement? gender;
    final Property? id;
    final Property? info;
    final Property? isDeleted;
    final Property? lastActiveAt;
    final Property? lastName;
    final Property? phone;
    final Property? profession;
    final AccountElement? role;
    final Property? secondName;
    final AccountElement? state;
    final AccountElement? status;
    final Property? updatedAt;

    EntityAccountProperties({
        this.avatar,
        this.createdAt,
        this.email,
        this.favoriteArticle,
        this.firstName,
        this.gender,
        this.id,
        this.info,
        this.isDeleted,
        this.lastActiveAt,
        this.lastName,
        this.phone,
        this.profession,
        this.role,
        this.secondName,
        this.state,
        this.status,
        this.updatedAt,
    });

    factory EntityAccountProperties.fromJson(Map<String, dynamic> json) => EntityAccountProperties(
        avatar: json["avatar"] == null ? null : Property.fromJson(json["avatar"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        email: json["email"] == null ? null : Property.fromJson(json["email"]),
        favoriteArticle: json["favorite_article"] == null ? null : Property.fromJson(json["favorite_article"]),
        firstName: json["first_name"] == null ? null : Property.fromJson(json["first_name"]),
        gender: json["gender"] == null ? null : AccountElement.fromJson(json["gender"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        info: json["info"] == null ? null : Property.fromJson(json["info"]),
        isDeleted: json["is_deleted"] == null ? null : Property.fromJson(json["is_deleted"]),
        lastActiveAt: json["last_active_at"] == null ? null : Property.fromJson(json["last_active_at"]),
        lastName: json["last_name"] == null ? null : Property.fromJson(json["last_name"]),
        phone: json["phone"] == null ? null : Property.fromJson(json["phone"]),
        profession: json["profession"] == null ? null : Property.fromJson(json["profession"]),
        role: json["role"] == null ? null : AccountElement.fromJson(json["role"]),
        secondName: json["second_name"] == null ? null : Property.fromJson(json["second_name"]),
        state: json["state"] == null ? null : AccountElement.fromJson(json["state"]),
        status: json["status"] == null ? null : AccountElement.fromJson(json["status"]),
        updatedAt: json["updated_at"] == null ? null : Property.fromJson(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar?.toJson(),
        "created_at": createdAt?.toJson(),
        "email": email?.toJson(),
        "favorite_article": favoriteArticle?.toJson(),
        "first_name": firstName?.toJson(),
        "gender": gender?.toJson(),
        "id": id?.toJson(),
        "info": info?.toJson(),
        "is_deleted": isDeleted?.toJson(),
        "last_active_at": lastActiveAt?.toJson(),
        "last_name": lastName?.toJson(),
        "phone": phone?.toJson(),
        "profession": profession?.toJson(),
        "role": role?.toJson(),
        "second_name": secondName?.toJson(),
        "state": state?.toJson(),
        "status": status?.toJson(),
        "updated_at": updatedAt?.toJson(),
    };
}

class EntityAccountMe {
    final AccountResponseAccountMeType? type;
    final EntityAccountMeProperties? properties;

    EntityAccountMe({
        this.type,
        this.properties,
    });

    factory EntityAccountMe.fromJson(Map<String, dynamic> json) => EntityAccountMe(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityAccountMeProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityAccountMeProperties {
    final AccountElement? account;
    final AccountElement? doctor;
    final AccountElement? onlineSchool;

    EntityAccountMeProperties({
        this.account,
        this.doctor,
        this.onlineSchool,
    });

    factory EntityAccountMeProperties.fromJson(Map<String, dynamic> json) => EntityAccountMeProperties(
        account: json["account"] == null ? null : AccountElement.fromJson(json["account"]),
        doctor: json["doctor"] == null ? null : AccountElement.fromJson(json["doctor"]),
        onlineSchool: json["online_school"] == null ? null : AccountElement.fromJson(json["online_school"]),
    );

    Map<String, dynamic> toJson() => {
        "account": account?.toJson(),
        "doctor": doctor?.toJson(),
        "online_school": onlineSchool?.toJson(),
    };
}

class EntityAgeCategoryClass {
    final AccountResponseAccountMeType? type;
    final EntityAgeCategoryProperties? properties;

    EntityAgeCategoryClass({
        this.type,
        this.properties,
    });

    factory EntityAgeCategoryClass.fromJson(Map<String, dynamic> json) => EntityAgeCategoryClass(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityAgeCategoryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityAgeCategoryProperties {
    final Property? id;
    final Property? name;

    EntityAgeCategoryProperties({
        this.id,
        this.name,
    });

    factory EntityAgeCategoryProperties.fromJson(Map<String, dynamic> json) => EntityAgeCategoryProperties(
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id?.toJson(),
        "name": name?.toJson(),
    };
}

class EntityArticleImage {
    final AccountResponseAccountMeType? type;
    final EntityArticleImageProperties? properties;

    EntityArticleImage({
        this.type,
        this.properties,
    });

    factory EntityArticleImage.fromJson(Map<String, dynamic> json) => EntityArticleImage(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityArticleImageProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityArticleImageProperties {
    final Property? id;
    final Property? index;
    final Property? photoId;

    EntityArticleImageProperties({
        this.id,
        this.index,
        this.photoId,
    });

    factory EntityArticleImageProperties.fromJson(Map<String, dynamic> json) => EntityArticleImageProperties(
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        index: json["index"] == null ? null : Property.fromJson(json["index"]),
        photoId: json["photo_id"] == null ? null : Property.fromJson(json["photo_id"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id?.toJson(),
        "index": index?.toJson(),
        "photo_id": photoId?.toJson(),
    };
}

class EntityArticleResponse {
    final AccountResponseAccountMeType? type;
    final EntityArticleResponseProperties? properties;

    EntityArticleResponse({
        this.type,
        this.properties,
    });

    factory EntityArticleResponse.fromJson(Map<String, dynamic> json) => EntityArticleResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityArticleResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityArticleResponseProperties {
    final AccountElement? account;
    final CategoryClass? ageCategory;
    final ImagesClass? body;
    final Property? category;
    final Property? countArticlesAuthor;
    final Property? createdAt;
    final Property? file;
    final Property? id;
    final Property? photoId;
    final Property? status;
    final AccountElement? subAccountDoctor;
    final AccountElement? subAccountOnlineSchool;
    final CategoryClass? tags;
    final Property? title;

    EntityArticleResponseProperties({
        this.account,
        this.ageCategory,
        this.body,
        this.category,
        this.countArticlesAuthor,
        this.createdAt,
        this.file,
        this.id,
        this.photoId,
        this.status,
        this.subAccountDoctor,
        this.subAccountOnlineSchool,
        this.tags,
        this.title,
    });

    factory EntityArticleResponseProperties.fromJson(Map<String, dynamic> json) => EntityArticleResponseProperties(
        account: json["account"] == null ? null : AccountElement.fromJson(json["account"]),
        ageCategory: json["age_category"] == null ? null : CategoryClass.fromJson(json["age_category"]),
        body: json["body"] == null ? null : ImagesClass.fromJson(json["body"]),
        category: json["category"] == null ? null : Property.fromJson(json["category"]),
        countArticlesAuthor: json["count_articles_author"] == null ? null : Property.fromJson(json["count_articles_author"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        file: json["file"] == null ? null : Property.fromJson(json["file"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        photoId: json["photo_id"] == null ? null : Property.fromJson(json["photo_id"]),
        status: json["status"] == null ? null : Property.fromJson(json["status"]),
        subAccountDoctor: json["sub_account_doctor"] == null ? null : AccountElement.fromJson(json["sub_account_doctor"]),
        subAccountOnlineSchool: json["sub_account_online_school"] == null ? null : AccountElement.fromJson(json["sub_account_online_school"]),
        tags: json["tags"] == null ? null : CategoryClass.fromJson(json["tags"]),
        title: json["title"] == null ? null : Property.fromJson(json["title"]),
    );

    Map<String, dynamic> toJson() => {
        "account": account?.toJson(),
        "age_category": ageCategory?.toJson(),
        "body": body?.toJson(),
        "category": category?.toJson(),
        "count_articles_author": countArticlesAuthor?.toJson(),
        "created_at": createdAt?.toJson(),
        "file": file?.toJson(),
        "id": id?.toJson(),
        "photo_id": photoId?.toJson(),
        "status": status?.toJson(),
        "sub_account_doctor": subAccountDoctor?.toJson(),
        "sub_account_online_school": subAccountOnlineSchool?.toJson(),
        "tags": tags?.toJson(),
        "title": title?.toJson(),
    };
}

class EntityArticleWriter {
    final AccountResponseAccountMeType? type;
    final EntityArticleWriterProperties? properties;

    EntityArticleWriter({
        this.type,
        this.properties,
    });

    factory EntityArticleWriter.fromJson(Map<String, dynamic> json) => EntityArticleWriter(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityArticleWriterProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityArticleWriterProperties {
    final Property? accountId;
    final Property? doctorProfession;
    final Property? firstName;
    final Property? lastName;
    final Property? photoId;
    final AccountElement? profession;

    EntityArticleWriterProperties({
        this.accountId,
        this.doctorProfession,
        this.firstName,
        this.lastName,
        this.photoId,
        this.profession,
    });

    factory EntityArticleWriterProperties.fromJson(Map<String, dynamic> json) => EntityArticleWriterProperties(
        accountId: json["account_id"] == null ? null : Property.fromJson(json["account_id"]),
        doctorProfession: json["doctor_profession"] == null ? null : Property.fromJson(json["doctor_profession"]),
        firstName: json["first_name"] == null ? null : Property.fromJson(json["first_name"]),
        lastName: json["last_name"] == null ? null : Property.fromJson(json["last_name"]),
        photoId: json["photo_id"] == null ? null : Property.fromJson(json["photo_id"]),
        profession: json["profession"] == null ? null : AccountElement.fromJson(json["profession"]),
    );

    Map<String, dynamic> toJson() => {
        "account_id": accountId?.toJson(),
        "doctor_profession": doctorProfession?.toJson(),
        "first_name": firstName?.toJson(),
        "last_name": lastName?.toJson(),
        "photo_id": photoId?.toJson(),
        "profession": profession?.toJson(),
    };
}

class EntityBaseUser {
    final AccountResponseAccountMeType? type;
    final EntityBaseUserProperties? properties;

    EntityBaseUser({
        this.type,
        this.properties,
    });

    factory EntityBaseUser.fromJson(Map<String, dynamic> json) => EntityBaseUser(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityBaseUserProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityBaseUserProperties {
    final Property? accountId;
    final Property? city;
    final Property? createdId;
    final Property? endPrime;
    final Property? id;
    final CategoryClass? roles;
    final Property? startPrime;
    final Property? typePrime;
    final Property? updatedId;

    EntityBaseUserProperties({
        this.accountId,
        this.city,
        this.createdId,
        this.endPrime,
        this.id,
        this.roles,
        this.startPrime,
        this.typePrime,
        this.updatedId,
    });

    factory EntityBaseUserProperties.fromJson(Map<String, dynamic> json) => EntityBaseUserProperties(
        accountId: json["account_id"] == null ? null : Property.fromJson(json["account_id"]),
        city: json["city"] == null ? null : Property.fromJson(json["city"]),
        createdId: json["created_id"] == null ? null : Property.fromJson(json["created_id"]),
        endPrime: json["end_prime"] == null ? null : Property.fromJson(json["end_prime"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        roles: json["roles"] == null ? null : CategoryClass.fromJson(json["roles"]),
        startPrime: json["start_prime"] == null ? null : Property.fromJson(json["start_prime"]),
        typePrime: json["type_prime"] == null ? null : Property.fromJson(json["type_prime"]),
        updatedId: json["updated_id"] == null ? null : Property.fromJson(json["updated_id"]),
    );

    Map<String, dynamic> toJson() => {
        "account_id": accountId?.toJson(),
        "city": city?.toJson(),
        "created_id": createdId?.toJson(),
        "end_prime": endPrime?.toJson(),
        "id": id?.toJson(),
        "roles": roles?.toJson(),
        "start_prime": startPrime?.toJson(),
        "type_prime": typePrime?.toJson(),
        "updated_id": updatedId?.toJson(),
    };
}

class EntityBodyResponse {
    final AccountResponseAccountMeType? type;
    final EntityBodyResponseProperties? properties;

    EntityBodyResponse({
        this.type,
        this.properties,
    });

    factory EntityBodyResponse.fromJson(Map<String, dynamic> json) => EntityBodyResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityBodyResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityBodyResponseProperties {
    final Contact? payload;
    final Property? type;

    EntityBodyResponseProperties({
        this.payload,
        this.type,
    });

    factory EntityBodyResponseProperties.fromJson(Map<String, dynamic> json) => EntityBodyResponseProperties(
        payload: json["payload"] == null ? null : Contact.fromJson(json["payload"]),
        type: json["type"] == null ? null : Property.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "payload": payload?.toJson(),
        "type": type?.toJson(),
    };
}

class Contact {
    Contact();

    factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    );

    Map<String, dynamic> toJson() => {
    };
}

class EntityChestHistoryClass {
    final AccountResponseAccountMeType? type;
    final EntityChestHistoryProperties? properties;

    EntityChestHistoryClass({
        this.type,
        this.properties,
    });

    factory EntityChestHistoryClass.fromJson(Map<String, dynamic> json) => EntityChestHistoryClass(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityChestHistoryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityChestHistoryProperties {
    final Property? left;
    final Property? notes;
    final Property? right;
    final Property? time;
    final Property? total;

    EntityChestHistoryProperties({
        this.left,
        this.notes,
        this.right,
        this.time,
        this.total,
    });

    factory EntityChestHistoryProperties.fromJson(Map<String, dynamic> json) => EntityChestHistoryProperties(
        left: json["left"] == null ? null : Property.fromJson(json["left"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        right: json["right"] == null ? null : Property.fromJson(json["right"]),
        time: json["time"] == null ? null : Property.fromJson(json["time"]),
        total: json["total"] == null ? null : Property.fromJson(json["total"]),
    );

    Map<String, dynamic> toJson() => {
        "left": left?.toJson(),
        "notes": notes?.toJson(),
        "right": right?.toJson(),
        "time": time?.toJson(),
        "total": total?.toJson(),
    };
}

class EntityChestHistoryTotal {
    final AccountResponseAccountMeType? type;
    final EntityChestHistoryTotalProperties? properties;

    EntityChestHistoryTotal({
        this.type,
        this.properties,
    });

    factory EntityChestHistoryTotal.fromJson(Map<String, dynamic> json) => EntityChestHistoryTotal(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityChestHistoryTotalProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityChestHistoryTotalProperties {
    final ImagesClass? chestHistory;
    final Property? timeToEndDontUse;
    final Property? timeToEndTotal;
    final Property? totalLeft;
    final Property? totalRight;
    final Property? totalTotal;

    EntityChestHistoryTotalProperties({
        this.chestHistory,
        this.timeToEndDontUse,
        this.timeToEndTotal,
        this.totalLeft,
        this.totalRight,
        this.totalTotal,
    });

    factory EntityChestHistoryTotalProperties.fromJson(Map<String, dynamic> json) => EntityChestHistoryTotalProperties(
        chestHistory: json["chest_history"] == null ? null : ImagesClass.fromJson(json["chest_history"]),
        timeToEndDontUse: json["time_to_end_dont_use"] == null ? null : Property.fromJson(json["time_to_end_dont_use"]),
        timeToEndTotal: json["time_to_end_total"] == null ? null : Property.fromJson(json["time_to_end_total"]),
        totalLeft: json["total_left"] == null ? null : Property.fromJson(json["total_left"]),
        totalRight: json["total_right"] == null ? null : Property.fromJson(json["total_right"]),
        totalTotal: json["total_total"] == null ? null : Property.fromJson(json["total_total"]),
    );

    Map<String, dynamic> toJson() => {
        "chest_history": chestHistory?.toJson(),
        "time_to_end_dont_use": timeToEndDontUse?.toJson(),
        "time_to_end_total": timeToEndTotal?.toJson(),
        "total_left": totalLeft?.toJson(),
        "total_right": totalRight?.toJson(),
        "total_total": totalTotal?.toJson(),
    };
}

class EntityChild {
    final AccountResponseAccountMeType? type;
    final EntityChildProperties? properties;

    EntityChild({
        this.type,
        this.properties,
    });

    factory EntityChild.fromJson(Map<String, dynamic> json) => EntityChild(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityChildProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityChildProperties {
    final Property? avatar;
    final Property? birthDate;
    final AccountElement? childbirth;
    final Property? childbirthWithComplications;
    final Property? createdAt;
    final Property? firstName;
    final Property? gender;
    final Property? headCirc;
    final Property? height;
    final Property? id;
    final Property? info;
    final Property? isTwins;
    final Property? secondName;
    final AccountElement? status;
    final Property? updatedAt;
    final Property? weight;

    EntityChildProperties({
        this.avatar,
        this.birthDate,
        this.childbirth,
        this.childbirthWithComplications,
        this.createdAt,
        this.firstName,
        this.gender,
        this.headCirc,
        this.height,
        this.id,
        this.info,
        this.isTwins,
        this.secondName,
        this.status,
        this.updatedAt,
        this.weight,
    });

    factory EntityChildProperties.fromJson(Map<String, dynamic> json) => EntityChildProperties(
        avatar: json["avatar"] == null ? null : Property.fromJson(json["avatar"]),
        birthDate: json["birth_date"] == null ? null : Property.fromJson(json["birth_date"]),
        childbirth: json["childbirth"] == null ? null : AccountElement.fromJson(json["childbirth"]),
        childbirthWithComplications: json["childbirth_with_complications"] == null ? null : Property.fromJson(json["childbirth_with_complications"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        firstName: json["first_name"] == null ? null : Property.fromJson(json["first_name"]),
        gender: json["gender"] == null ? null : Property.fromJson(json["gender"]),
        headCirc: json["head_circ"] == null ? null : Property.fromJson(json["head_circ"]),
        height: json["height"] == null ? null : Property.fromJson(json["height"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        info: json["info"] == null ? null : Property.fromJson(json["info"]),
        isTwins: json["is_twins"] == null ? null : Property.fromJson(json["is_twins"]),
        secondName: json["second_name"] == null ? null : Property.fromJson(json["second_name"]),
        status: json["status"] == null ? null : AccountElement.fromJson(json["status"]),
        updatedAt: json["updated_at"] == null ? null : Property.fromJson(json["updated_at"]),
        weight: json["weight"] == null ? null : Property.fromJson(json["weight"]),
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar?.toJson(),
        "birth_date": birthDate?.toJson(),
        "childbirth": childbirth?.toJson(),
        "childbirth_with_complications": childbirthWithComplications?.toJson(),
        "created_at": createdAt?.toJson(),
        "first_name": firstName?.toJson(),
        "gender": gender?.toJson(),
        "head_circ": headCirc?.toJson(),
        "height": height?.toJson(),
        "id": id?.toJson(),
        "info": info?.toJson(),
        "is_twins": isTwins?.toJson(),
        "second_name": secondName?.toJson(),
        "status": status?.toJson(),
        "updated_at": updatedAt?.toJson(),
        "weight": weight?.toJson(),
    };
}

class EntityChildbirthClass {
    final PropertyType? type;
    final List<String>? entityEnum;
    final List<String>? xEnumVarnames;

    EntityChildbirthClass({
        this.type,
        this.entityEnum,
        this.xEnumVarnames,
    });

    factory EntityChildbirthClass.fromJson(Map<String, dynamic> json) => EntityChildbirthClass(
        type: propertyTypeValues.map[json["type"]]!,
        entityEnum: json["enum"] == null ? [] : List<String>.from(json["enum"]!.map((x) => x)),
        xEnumVarnames: json["x-enum-varnames"] == null ? [] : List<String>.from(json["x-enum-varnames"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "type": propertyTypeValues.reverse[type],
        "enum": entityEnum == null ? [] : List<dynamic>.from(entityEnum!.map((x) => x)),
        "x-enum-varnames": xEnumVarnames == null ? [] : List<dynamic>.from(xEnumVarnames!.map((x) => x)),
    };
}

class EntityCircle {
    final AccountResponseAccountMeType? type;
    final EntityCircleProperties? properties;

    EntityCircle({
        this.type,
        this.properties,
    });

    factory EntityCircle.fromJson(Map<String, dynamic> json) => EntityCircle(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityCircleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityCircleProperties {
    final Property? childId;
    final Phone? circle;
    final Phone? createdAt;
    final Property? id;
    final Property? notes;
    final Phone? height;
    final Phone? weight;

    EntityCircleProperties({
        this.childId,
        this.circle,
        this.createdAt,
        this.id,
        this.notes,
        this.height,
        this.weight,
    });

    factory EntityCircleProperties.fromJson(Map<String, dynamic> json) => EntityCircleProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        circle: json["circle"] == null ? null : Phone.fromJson(json["circle"]),
        createdAt: json["created_at"] == null ? null : Phone.fromJson(json["created_at"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        height: json["height"] == null ? null : Phone.fromJson(json["height"]),
        weight: json["weight"] == null ? null : Phone.fromJson(json["weight"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
        "circle": circle?.toJson(),
        "created_at": createdAt?.toJson(),
        "id": id?.toJson(),
        "notes": notes?.toJson(),
        "height": height?.toJson(),
        "weight": weight?.toJson(),
    };
}

class EntityCity {
    final AccountResponseAccountMeType? type;
    final EntityCityProperties? properties;

    EntityCity({
        this.type,
        this.properties,
    });

    factory EntityCity.fromJson(Map<String, dynamic> json) => EntityCity(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityCityProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityCityProperties {
    final Property? countryId;
    final Property? id;
    final Property? name;

    EntityCityProperties({
        this.countryId,
        this.id,
        this.name,
    });

    factory EntityCityProperties.fromJson(Map<String, dynamic> json) => EntityCityProperties(
        countryId: json["country_id"] == null ? null : Property.fromJson(json["country_id"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "country_id": countryId?.toJson(),
        "id": id?.toJson(),
        "name": name?.toJson(),
    };
}

class EntityConsultationResponse {
    final AccountResponseAccountMeType? type;
    final EntityConsultationResponseProperties? properties;

    EntityConsultationResponse({
        this.type,
        this.properties,
    });

    factory EntityConsultationResponse.fromJson(Map<String, dynamic> json) => EntityConsultationResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityConsultationResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityConsultationResponseProperties {
    final Property? createdAt;
    final AccountElement? doctor;
    final Property? id;
    final Property? status;
    final Property? timeBegin;
    final Property? type;
    final AccountElement? user;

    EntityConsultationResponseProperties({
        this.createdAt,
        this.doctor,
        this.id,
        this.status,
        this.timeBegin,
        this.type,
        this.user,
    });

    factory EntityConsultationResponseProperties.fromJson(Map<String, dynamic> json) => EntityConsultationResponseProperties(
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        doctor: json["doctor"] == null ? null : AccountElement.fromJson(json["doctor"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        status: json["status"] == null ? null : Property.fromJson(json["status"]),
        timeBegin: json["time_begin"] == null ? null : Property.fromJson(json["time_begin"]),
        type: json["type"] == null ? null : Property.fromJson(json["type"]),
        user: json["user"] == null ? null : AccountElement.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "created_at": createdAt?.toJson(),
        "doctor": doctor?.toJson(),
        "id": id?.toJson(),
        "status": status?.toJson(),
        "time_begin": timeBegin?.toJson(),
        "type": type?.toJson(),
        "user": user?.toJson(),
    };
}

class EntityCryClass {
    final AccountResponseAccountMeType? type;
    final EntityCryProperties? properties;

    EntityCryClass({
        this.type,
        this.properties,
    });

    factory EntityCryClass.fromJson(Map<String, dynamic> json) => EntityCryClass(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityCryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityCryProperties {
    final Property? allCry;
    final Property? childId;
    final Property? id;
    final Property? notes;
    final Property? timeEnd;
    final Property? timeToEnd;
    final Property? timeToStart;
    final Property? allSleep;

    EntityCryProperties({
        this.allCry,
        this.childId,
        this.id,
        this.notes,
        this.timeEnd,
        this.timeToEnd,
        this.timeToStart,
        this.allSleep,
    });

    factory EntityCryProperties.fromJson(Map<String, dynamic> json) => EntityCryProperties(
        allCry: json["all_cry"] == null ? null : Property.fromJson(json["all_cry"]),
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        timeEnd: json["time_end"] == null ? null : Property.fromJson(json["time_end"]),
        timeToEnd: json["time_to_end"] == null ? null : Property.fromJson(json["time_to_end"]),
        timeToStart: json["time_to_start"] == null ? null : Property.fromJson(json["time_to_start"]),
        allSleep: json["all_sleep"] == null ? null : Property.fromJson(json["all_sleep"]),
    );

    Map<String, dynamic> toJson() => {
        "all_cry": allCry?.toJson(),
        "child_id": childId?.toJson(),
        "id": id?.toJson(),
        "notes": notes?.toJson(),
        "time_end": timeEnd?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
        "time_to_start": timeToStart?.toJson(),
        "all_sleep": allSleep?.toJson(),
    };
}

class EntityCryAndSleep {
    final AccountResponseAccountMeType? type;
    final EntityCryAndSleepProperties? properties;

    EntityCryAndSleep({
        this.type,
        this.properties,
    });

    factory EntityCryAndSleep.fromJson(Map<String, dynamic> json) => EntityCryAndSleep(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityCryAndSleepProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityCryAndSleepProperties {
    final ImagesClass? cry;
    final ImagesClass? sleep;

    EntityCryAndSleepProperties({
        this.cry,
        this.sleep,
    });

    factory EntityCryAndSleepProperties.fromJson(Map<String, dynamic> json) => EntityCryAndSleepProperties(
        cry: json["cry"] == null ? null : ImagesClass.fromJson(json["cry"]),
        sleep: json["sleep"] == null ? null : ImagesClass.fromJson(json["sleep"]),
    );

    Map<String, dynamic> toJson() => {
        "cry": cry?.toJson(),
        "sleep": sleep?.toJson(),
    };
}

class EntityCryHistoryClass {
    final AccountResponseAccountMeType? type;
    final EntityCryHistoryProperties? properties;

    EntityCryHistoryClass({
        this.type,
        this.properties,
    });

    factory EntityCryHistoryClass.fromJson(Map<String, dynamic> json) => EntityCryHistoryClass(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityCryHistoryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityCryHistoryProperties {
    final Property? notes;
    final Property? timeAll;
    final Property? timeEnd;
    final Property? timeStart;

    EntityCryHistoryProperties({
        this.notes,
        this.timeAll,
        this.timeEnd,
        this.timeStart,
    });

    factory EntityCryHistoryProperties.fromJson(Map<String, dynamic> json) => EntityCryHistoryProperties(
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        timeAll: json["time_all"] == null ? null : Property.fromJson(json["time_all"]),
        timeEnd: json["time_end"] == null ? null : Property.fromJson(json["time_end"]),
        timeStart: json["time_start"] == null ? null : Property.fromJson(json["time_start"]),
    );

    Map<String, dynamic> toJson() => {
        "notes": notes?.toJson(),
        "time_all": timeAll?.toJson(),
        "time_end": timeEnd?.toJson(),
        "time_start": timeStart?.toJson(),
    };
}

class EntityHistoryTotal {
    final AccountResponseAccountMeType? type;
    final EntityCryHistoryTotalProperties? properties;

    EntityHistoryTotal({
        this.type,
        this.properties,
    });

    factory EntityHistoryTotal.fromJson(Map<String, dynamic> json) => EntityHistoryTotal(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityCryHistoryTotalProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityCryHistoryTotalProperties {
    final ImagesClass? cryTotal;
    final Property? months;
    final Property? time;
    final Property? timeToEndTotal;
    final ImagesClass? sleepTotal;

    EntityCryHistoryTotalProperties({
        this.cryTotal,
        this.months,
        this.time,
        this.timeToEndTotal,
        this.sleepTotal,
    });

    factory EntityCryHistoryTotalProperties.fromJson(Map<String, dynamic> json) => EntityCryHistoryTotalProperties(
        cryTotal: json["Cry_total"] == null ? null : ImagesClass.fromJson(json["Cry_total"]),
        months: json["months"] == null ? null : Property.fromJson(json["months"]),
        time: json["time"] == null ? null : Property.fromJson(json["time"]),
        timeToEndTotal: json["time_to_end_total"] == null ? null : Property.fromJson(json["time_to_end_total"]),
        sleepTotal: json["sleep_total"] == null ? null : ImagesClass.fromJson(json["sleep_total"]),
    );

    Map<String, dynamic> toJson() => {
        "Cry_total": cryTotal?.toJson(),
        "months": months?.toJson(),
        "time": time?.toJson(),
        "time_to_end_total": timeToEndTotal?.toJson(),
        "sleep_total": sleepTotal?.toJson(),
    };
}

class EntityCurrent {
    final AccountResponseAccountMeType? type;
    final EntityCurrentCircleProperties? properties;

    EntityCurrent({
        this.type,
        this.properties,
    });

    factory EntityCurrent.fromJson(Map<String, dynamic> json) => EntityCurrent(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityCurrentCircleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityCurrentCircleProperties {
    final Property? circle;
    final Property? data;
    final Property? days;
    final Property? normal;
    final Property? height;
    final Property? weight;

    EntityCurrentCircleProperties({
        this.circle,
        this.data,
        this.days,
        this.normal,
        this.height,
        this.weight,
    });

    factory EntityCurrentCircleProperties.fromJson(Map<String, dynamic> json) => EntityCurrentCircleProperties(
        circle: json["circle"] == null ? null : Property.fromJson(json["circle"]),
        data: json["data"] == null ? null : Property.fromJson(json["data"]),
        days: json["days"] == null ? null : Property.fromJson(json["days"]),
        normal: json["normal"] == null ? null : Property.fromJson(json["normal"]),
        height: json["height"] == null ? null : Property.fromJson(json["height"]),
        weight: json["weight"] == null ? null : Property.fromJson(json["weight"]),
    );

    Map<String, dynamic> toJson() => {
        "circle": circle?.toJson(),
        "data": data?.toJson(),
        "days": days?.toJson(),
        "normal": normal?.toJson(),
        "height": height?.toJson(),
        "weight": weight?.toJson(),
    };
}

class EntityCurrentCircleStruct {
    final AccountResponseAccountMeType? type;
    final EntityCurrentCircleStructProperties? properties;

    EntityCurrentCircleStruct({
        this.type,
        this.properties,
    });

    factory EntityCurrentCircleStruct.fromJson(Map<String, dynamic> json) => EntityCurrentCircleStruct(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityCurrentCircleStructProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityCurrentCircleStructProperties {
    final Property? circle;
    final Property? time;

    EntityCurrentCircleStructProperties({
        this.circle,
        this.time,
    });

    factory EntityCurrentCircleStructProperties.fromJson(Map<String, dynamic> json) => EntityCurrentCircleStructProperties(
        circle: json["circle"] == null ? null : Property.fromJson(json["circle"]),
        time: json["time"] == null ? null : Property.fromJson(json["time"]),
    );

    Map<String, dynamic> toJson() => {
        "circle": circle?.toJson(),
        "time": time?.toJson(),
    };
}

class EntityCurrentHeightStruct {
    final AccountResponseAccountMeType? type;
    final EntityCurrentHeightStructProperties? properties;

    EntityCurrentHeightStruct({
        this.type,
        this.properties,
    });

    factory EntityCurrentHeightStruct.fromJson(Map<String, dynamic> json) => EntityCurrentHeightStruct(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityCurrentHeightStructProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityCurrentHeightStructProperties {
    final Property? height;
    final Property? time;

    EntityCurrentHeightStructProperties({
        this.height,
        this.time,
    });

    factory EntityCurrentHeightStructProperties.fromJson(Map<String, dynamic> json) => EntityCurrentHeightStructProperties(
        height: json["height"] == null ? null : Property.fromJson(json["height"]),
        time: json["time"] == null ? null : Property.fromJson(json["time"]),
    );

    Map<String, dynamic> toJson() => {
        "height": height?.toJson(),
        "time": time?.toJson(),
    };
}

class EntityCurrentWeightStruct {
    final AccountResponseAccountMeType? type;
    final EntityCurrentWeightStructProperties? properties;

    EntityCurrentWeightStruct({
        this.type,
        this.properties,
    });

    factory EntityCurrentWeightStruct.fromJson(Map<String, dynamic> json) => EntityCurrentWeightStruct(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityCurrentWeightStructProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityCurrentWeightStructProperties {
    final Property? time;
    final Property? weight;

    EntityCurrentWeightStructProperties({
        this.time,
        this.weight,
    });

    factory EntityCurrentWeightStructProperties.fromJson(Map<String, dynamic> json) => EntityCurrentWeightStructProperties(
        time: json["time"] == null ? null : Property.fromJson(json["time"]),
        weight: json["weight"] == null ? null : Property.fromJson(json["weight"]),
    );

    Map<String, dynamic> toJson() => {
        "time": time?.toJson(),
        "weight": weight?.toJson(),
    };
}

class EntityDiapersMain {
    final AccountResponseAccountMeType? type;
    final EntityDiapersMainProperties? properties;

    EntityDiapersMain({
        this.type,
        this.properties,
    });

    factory EntityDiapersMain.fromJson(Map<String, dynamic> json) => EntityDiapersMain(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityDiapersMainProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityDiapersMainProperties {
    final Property? data;
    final ImagesClass? diapersSub;

    EntityDiapersMainProperties({
        this.data,
        this.diapersSub,
    });

    factory EntityDiapersMainProperties.fromJson(Map<String, dynamic> json) => EntityDiapersMainProperties(
        data: json["data"] == null ? null : Property.fromJson(json["data"]),
        diapersSub: json["diapers_sub"] == null ? null : ImagesClass.fromJson(json["diapers_sub"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "diapers_sub": diapersSub?.toJson(),
    };
}

class EntityDiapersSubMain {
    final AccountResponseAccountMeType? type;
    final EntityDiapersSubMainProperties? properties;

    EntityDiapersSubMain({
        this.type,
        this.properties,
    });

    factory EntityDiapersSubMain.fromJson(Map<String, dynamic> json) => EntityDiapersSubMain(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityDiapersSubMainProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityDiapersSubMainProperties {
    final Property? data;
    final Property? howMuch;
    final Property? notes;
    final Property? typeOfDiapers;

    EntityDiapersSubMainProperties({
        this.data,
        this.howMuch,
        this.notes,
        this.typeOfDiapers,
    });

    factory EntityDiapersSubMainProperties.fromJson(Map<String, dynamic> json) => EntityDiapersSubMainProperties(
        data: json["data"] == null ? null : Property.fromJson(json["data"]),
        howMuch: json["how_much"] == null ? null : Property.fromJson(json["how_much"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        typeOfDiapers: json["type_of_diapers"] == null ? null : Property.fromJson(json["type_of_diapers"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "how_much": howMuch?.toJson(),
        "notes": notes?.toJson(),
        "type_of_diapers": typeOfDiapers?.toJson(),
    };
}

class EntityDoctorBase {
    final AccountResponseAccountMeType? type;
    final EntityDoctorBaseProperties? properties;

    EntityDoctorBase({
        this.type,
        this.properties,
    });

    factory EntityDoctorBase.fromJson(Map<String, dynamic> json) => EntityDoctorBase(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityDoctorBaseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityDoctorBaseProperties {
    final Property? accountId;
    final Property? createdAt;
    final Property? id;
    final Property? isConsultation;
    final Property? profession;
    final Property? updatedAt;

    EntityDoctorBaseProperties({
        this.accountId,
        this.createdAt,
        this.id,
        this.isConsultation,
        this.profession,
        this.updatedAt,
    });

    factory EntityDoctorBaseProperties.fromJson(Map<String, dynamic> json) => EntityDoctorBaseProperties(
        accountId: json["account_id"] == null ? null : Property.fromJson(json["account_id"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        isConsultation: json["is_consultation"] == null ? null : Property.fromJson(json["is_consultation"]),
        profession: json["profession"] == null ? null : Property.fromJson(json["profession"]),
        updatedAt: json["updated_at"] == null ? null : Property.fromJson(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "account_id": accountId?.toJson(),
        "created_at": createdAt?.toJson(),
        "id": id?.toJson(),
        "is_consultation": isConsultation?.toJson(),
        "profession": profession?.toJson(),
        "updated_at": updatedAt?.toJson(),
    };
}

class EntityDoctorResponse {
    final AccountResponseAccountMeType? type;
    final EntityDoctorResponseProperties? properties;

    EntityDoctorResponse({
        this.type,
        this.properties,
    });

    factory EntityDoctorResponse.fromJson(Map<String, dynamic> json) => EntityDoctorResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityDoctorResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityDoctorResponseProperties {
    final AccountElement? account;
    final Property? countArticles;
    final Property? createdAt;
    final Property? id;
    final Property? isConsultation;
    final Property? profession;
    final AccountElement? timeWork;
    final Property? updatedAt;

    EntityDoctorResponseProperties({
        this.account,
        this.countArticles,
        this.createdAt,
        this.id,
        this.isConsultation,
        this.profession,
        this.timeWork,
        this.updatedAt,
    });

    factory EntityDoctorResponseProperties.fromJson(Map<String, dynamic> json) => EntityDoctorResponseProperties(
        account: json["account"] == null ? null : AccountElement.fromJson(json["account"]),
        countArticles: json["count_articles"] == null ? null : Property.fromJson(json["count_articles"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        isConsultation: json["is_consultation"] == null ? null : Property.fromJson(json["is_consultation"]),
        profession: json["profession"] == null ? null : Property.fromJson(json["profession"]),
        timeWork: json["time_work"] == null ? null : AccountElement.fromJson(json["time_work"]),
        updatedAt: json["updated_at"] == null ? null : Property.fromJson(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "account": account?.toJson(),
        "count_articles": countArticles?.toJson(),
        "created_at": createdAt?.toJson(),
        "id": id?.toJson(),
        "is_consultation": isConsultation?.toJson(),
        "profession": profession?.toJson(),
        "time_work": timeWork?.toJson(),
        "updated_at": updatedAt?.toJson(),
    };
}

class EntityDynamicsCircle {
    final AccountResponseAccountMeType? type;
    final EntityDynamicsCircleProperties? properties;

    EntityDynamicsCircle({
        this.type,
        this.properties,
    });

    factory EntityDynamicsCircle.fromJson(Map<String, dynamic> json) => EntityDynamicsCircle(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityDynamicsCircleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityDynamicsCircleProperties {
    final Property? circleGain;
    final Property? circleToDay;
    final Property? days;
    final Property? timeDuration;

    EntityDynamicsCircleProperties({
        this.circleGain,
        this.circleToDay,
        this.days,
        this.timeDuration,
    });

    factory EntityDynamicsCircleProperties.fromJson(Map<String, dynamic> json) => EntityDynamicsCircleProperties(
        circleGain: json["circle_gain"] == null ? null : Property.fromJson(json["circle_gain"]),
        circleToDay: json["circle_to_day"] == null ? null : Property.fromJson(json["circle_to_day"]),
        days: json["days"] == null ? null : Property.fromJson(json["days"]),
        timeDuration: json["time_duration"] == null ? null : Property.fromJson(json["time_duration"]),
    );

    Map<String, dynamic> toJson() => {
        "circle_gain": circleGain?.toJson(),
        "circle_to_day": circleToDay?.toJson(),
        "days": days?.toJson(),
        "time_duration": timeDuration?.toJson(),
    };
}

class EntityDynamicsHeight {
    final AccountResponseAccountMeType? type;
    final EntityDynamicsHeightProperties? properties;

    EntityDynamicsHeight({
        this.type,
        this.properties,
    });

    factory EntityDynamicsHeight.fromJson(Map<String, dynamic> json) => EntityDynamicsHeight(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityDynamicsHeightProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityDynamicsHeightProperties {
    final Property? days;
    final Property? heightGain;
    final Property? heightToDay;
    final Property? timeDuration;

    EntityDynamicsHeightProperties({
        this.days,
        this.heightGain,
        this.heightToDay,
        this.timeDuration,
    });

    factory EntityDynamicsHeightProperties.fromJson(Map<String, dynamic> json) => EntityDynamicsHeightProperties(
        days: json["days"] == null ? null : Property.fromJson(json["days"]),
        heightGain: json["height_gain"] == null ? null : Property.fromJson(json["height_gain"]),
        heightToDay: json["height_to_day"] == null ? null : Property.fromJson(json["height_to_day"]),
        timeDuration: json["time_duration"] == null ? null : Property.fromJson(json["time_duration"]),
    );

    Map<String, dynamic> toJson() => {
        "days": days?.toJson(),
        "height_gain": heightGain?.toJson(),
        "height_to_day": heightToDay?.toJson(),
        "time_duration": timeDuration?.toJson(),
    };
}

class EntityDynamicsWeight {
    final AccountResponseAccountMeType? type;
    final EntityDynamicsWeightProperties? properties;

    EntityDynamicsWeight({
        this.type,
        this.properties,
    });

    factory EntityDynamicsWeight.fromJson(Map<String, dynamic> json) => EntityDynamicsWeight(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityDynamicsWeightProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityDynamicsWeightProperties {
    final Property? days;
    final Property? timeDuration;
    final Property? weightGain;
    final Property? weightToDay;

    EntityDynamicsWeightProperties({
        this.days,
        this.timeDuration,
        this.weightGain,
        this.weightToDay,
    });

    factory EntityDynamicsWeightProperties.fromJson(Map<String, dynamic> json) => EntityDynamicsWeightProperties(
        days: json["days"] == null ? null : Property.fromJson(json["days"]),
        timeDuration: json["time_duration"] == null ? null : Property.fromJson(json["time_duration"]),
        weightGain: json["weight_gain"] == null ? null : Property.fromJson(json["weight_gain"]),
        weightToDay: json["weight_to_day"] == null ? null : Property.fromJson(json["weight_to_day"]),
    );

    Map<String, dynamic> toJson() => {
        "days": days?.toJson(),
        "time_duration": timeDuration?.toJson(),
        "weight_gain": weightGain?.toJson(),
        "weight_to_day": weightToDay?.toJson(),
    };
}

class EntityFeedback {
    final AccountResponseAccountMeType? type;
    final EntityFeedbackProperties? properties;

    EntityFeedback({
        this.type,
        this.properties,
    });

    factory EntityFeedback.fromJson(Map<String, dynamic> json) => EntityFeedback(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityFeedbackProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityFeedbackProperties {
    final AccountElement? account;
    final Property? accountId;
    final Property? createdAt;
    final Property? id;
    final Property? status;
    final Property? text;
    final Property? type;

    EntityFeedbackProperties({
        this.account,
        this.accountId,
        this.createdAt,
        this.id,
        this.status,
        this.text,
        this.type,
    });

    factory EntityFeedbackProperties.fromJson(Map<String, dynamic> json) => EntityFeedbackProperties(
        account: json["account"] == null ? null : AccountElement.fromJson(json["account"]),
        accountId: json["account_id"] == null ? null : Property.fromJson(json["account_id"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        status: json["status"] == null ? null : Property.fromJson(json["status"]),
        text: json["text"] == null ? null : Property.fromJson(json["text"]),
        type: json["type"] == null ? null : Property.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "account": account?.toJson(),
        "account_id": accountId?.toJson(),
        "created_at": createdAt?.toJson(),
        "id": id?.toJson(),
        "status": status?.toJson(),
        "text": text?.toJson(),
        "type": type?.toJson(),
    };
}

class EntityFeeding {
    final AccountResponseAccountMeType? type;
    final EntityFeedingProperties? properties;

    EntityFeeding({
        this.type,
        this.properties,
    });

    factory EntityFeeding.fromJson(Map<String, dynamic> json) => EntityFeeding(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityFeedingProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityFeedingProperties {
    final Property? allFeeding;
    final Property? childId;
    final Property? id;
    final Property? leftFeeding;
    final Property? notes;
    final Property? rightFeeding;
    final Property? timeToEnd;

    EntityFeedingProperties({
        this.allFeeding,
        this.childId,
        this.id,
        this.leftFeeding,
        this.notes,
        this.rightFeeding,
        this.timeToEnd,
    });

    factory EntityFeedingProperties.fromJson(Map<String, dynamic> json) => EntityFeedingProperties(
        allFeeding: json["all_feeding"] == null ? null : Property.fromJson(json["all_feeding"]),
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        leftFeeding: json["left_feeding"] == null ? null : Property.fromJson(json["left_feeding"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        rightFeeding: json["right_feeding"] == null ? null : Property.fromJson(json["right_feeding"]),
        timeToEnd: json["time_to_end"] == null ? null : Property.fromJson(json["time_to_end"]),
    );

    Map<String, dynamic> toJson() => {
        "all_feeding": allFeeding?.toJson(),
        "child_id": childId?.toJson(),
        "id": id?.toJson(),
        "left_feeding": leftFeeding?.toJson(),
        "notes": notes?.toJson(),
        "right_feeding": rightFeeding?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
    };
}

class EntityFood {
    final AccountResponseAccountMeType? type;
    final EntityFoodProperties? properties;

    EntityFood({
        this.type,
        this.properties,
    });

    factory EntityFood.fromJson(Map<String, dynamic> json) => EntityFood(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityFoodProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityFoodProperties {
    final Property? chest;
    final Property? childId;
    final Property? id;
    final Property? mixture;
    final Property? notes;
    final Property? timeToEnd;

    EntityFoodProperties({
        this.chest,
        this.childId,
        this.id,
        this.mixture,
        this.notes,
        this.timeToEnd,
    });

    factory EntityFoodProperties.fromJson(Map<String, dynamic> json) => EntityFoodProperties(
        chest: json["chest"] == null ? null : Property.fromJson(json["chest"]),
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        mixture: json["mixture"] == null ? null : Property.fromJson(json["mixture"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        timeToEnd: json["time_to_end"] == null ? null : Property.fromJson(json["time_to_end"]),
    );

    Map<String, dynamic> toJson() => {
        "chest": chest?.toJson(),
        "child_id": childId?.toJson(),
        "id": id?.toJson(),
        "mixture": mixture?.toJson(),
        "notes": notes?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
    };
}

class EntityFoodHistory {
    final AccountResponseAccountMeType? type;
    final EntityFoodHistoryProperties? properties;

    EntityFoodHistory({
        this.type,
        this.properties,
    });

    factory EntityFoodHistory.fromJson(Map<String, dynamic> json) => EntityFoodHistory(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityFoodHistoryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityFoodHistoryProperties {
    final Property? chest;
    final Property? mixture;
    final Property? notes;
    final Property? time;
    final Property? total;

    EntityFoodHistoryProperties({
        this.chest,
        this.mixture,
        this.notes,
        this.time,
        this.total,
    });

    factory EntityFoodHistoryProperties.fromJson(Map<String, dynamic> json) => EntityFoodHistoryProperties(
        chest: json["chest"] == null ? null : Property.fromJson(json["chest"]),
        mixture: json["mixture"] == null ? null : Property.fromJson(json["mixture"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        time: json["time"] == null ? null : Property.fromJson(json["time"]),
        total: json["total"] == null ? null : Property.fromJson(json["total"]),
    );

    Map<String, dynamic> toJson() => {
        "chest": chest?.toJson(),
        "mixture": mixture?.toJson(),
        "notes": notes?.toJson(),
        "time": time?.toJson(),
        "total": total?.toJson(),
    };
}

class EntityFoodHistoryTotal {
    final AccountResponseAccountMeType? type;
    final EntityFoodHistoryTotalProperties? properties;

    EntityFoodHistoryTotal({
        this.type,
        this.properties,
    });

    factory EntityFoodHistoryTotal.fromJson(Map<String, dynamic> json) => EntityFoodHistoryTotal(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityFoodHistoryTotalProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityFoodHistoryTotalProperties {
    final ImagesClass? foodHistory;
    final Property? timeToEndDonTUse;
    final Property? timeToEndTotal;
    final Property? totalChest;
    final Property? totalMixture;
    final Property? totalTotal;

    EntityFoodHistoryTotalProperties({
        this.foodHistory,
        this.timeToEndDonTUse,
        this.timeToEndTotal,
        this.totalChest,
        this.totalMixture,
        this.totalTotal,
    });

    factory EntityFoodHistoryTotalProperties.fromJson(Map<String, dynamic> json) => EntityFoodHistoryTotalProperties(
        foodHistory: json["food_history"] == null ? null : ImagesClass.fromJson(json["food_history"]),
        timeToEndDonTUse: json["time_to_end_don't_use'"] == null ? null : Property.fromJson(json["time_to_end_don't_use'"]),
        timeToEndTotal: json["time_to_end_total"] == null ? null : Property.fromJson(json["time_to_end_total"]),
        totalChest: json["total_chest"] == null ? null : Property.fromJson(json["total_chest"]),
        totalMixture: json["total_mixture"] == null ? null : Property.fromJson(json["total_mixture"]),
        totalTotal: json["total_total"] == null ? null : Property.fromJson(json["total_total"]),
    );

    Map<String, dynamic> toJson() => {
        "food_history": foodHistory?.toJson(),
        "time_to_end_don't_use'": timeToEndDonTUse?.toJson(),
        "time_to_end_total": timeToEndTotal?.toJson(),
        "total_chest": totalChest?.toJson(),
        "total_mixture": totalMixture?.toJson(),
        "total_total": totalTotal?.toJson(),
    };
}

class EntityGetCircle {
    final AccountResponseAccountMeType? type;
    final EntityGetCircleProperties? properties;

    EntityGetCircle({
        this.type,
        this.properties,
    });

    factory EntityGetCircle.fromJson(Map<String, dynamic> json) => EntityGetCircle(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityGetCircleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityGetCircleProperties {
    final Phone? circle;
    final Phone? getCircle;
    final Phone? isNormal;
    final Phone? median;
    final Phone? normal;
    final Property? notes;
    final Phone? weeks;

    EntityGetCircleProperties({
        this.circle,
        this.getCircle,
        this.isNormal,
        this.median,
        this.normal,
        this.notes,
        this.weeks,
    });

    factory EntityGetCircleProperties.fromJson(Map<String, dynamic> json) => EntityGetCircleProperties(
        circle: json["circle"] == null ? null : Phone.fromJson(json["circle"]),
        getCircle: json["get_circle"] == null ? null : Phone.fromJson(json["get_circle"]),
        isNormal: json["is_normal"] == null ? null : Phone.fromJson(json["is_normal"]),
        median: json["median"] == null ? null : Phone.fromJson(json["median"]),
        normal: json["normal"] == null ? null : Phone.fromJson(json["normal"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        weeks: json["weeks"] == null ? null : Phone.fromJson(json["weeks"]),
    );

    Map<String, dynamic> toJson() => {
        "circle": circle?.toJson(),
        "get_circle": getCircle?.toJson(),
        "is_normal": isNormal?.toJson(),
        "median": median?.toJson(),
        "normal": normal?.toJson(),
        "notes": notes?.toJson(),
        "weeks": weeks?.toJson(),
    };
}

class EntityGetEight {
    final AccountResponseAccountMeType? type;
    final EntityGetHeightProperties? properties;

    EntityGetEight({
        this.type,
        this.properties,
    });

    factory EntityGetEight.fromJson(Map<String, dynamic> json) => EntityGetEight(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityGetHeightProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityGetHeightProperties {
    final Phone? getHeights;
    final Phone? isNormal;
    final Phone? median;
    final Phone? normal;
    final Property? notes;
    final Phone? weeks;
    final Phone? weight;
    final Phone? getWeights;

    EntityGetHeightProperties({
        this.getHeights,
        this.isNormal,
        this.median,
        this.normal,
        this.notes,
        this.weeks,
        this.weight,
        this.getWeights,
    });

    factory EntityGetHeightProperties.fromJson(Map<String, dynamic> json) => EntityGetHeightProperties(
        getHeights: json["get_heights"] == null ? null : Phone.fromJson(json["get_heights"]),
        isNormal: json["is_normal"] == null ? null : Phone.fromJson(json["is_normal"]),
        median: json["median"] == null ? null : Phone.fromJson(json["median"]),
        normal: json["normal"] == null ? null : Phone.fromJson(json["normal"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        weeks: json["weeks"] == null ? null : Phone.fromJson(json["weeks"]),
        weight: json["weight"] == null ? null : Phone.fromJson(json["weight"]),
        getWeights: json["get_weights"] == null ? null : Phone.fromJson(json["get_weights"]),
    );

    Map<String, dynamic> toJson() => {
        "get_heights": getHeights?.toJson(),
        "is_normal": isNormal?.toJson(),
        "median": median?.toJson(),
        "normal": normal?.toJson(),
        "notes": notes?.toJson(),
        "weeks": weeks?.toJson(),
        "weight": weight?.toJson(),
        "get_weights": getWeights?.toJson(),
    };
}

class EntityGroupChat {
    final AccountResponseAccountMeType? type;
    final EntityGroupChatProperties? properties;

    EntityGroupChat({
        this.type,
        this.properties,
    });

    factory EntityGroupChat.fromJson(Map<String, dynamic> json) => EntityGroupChat(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityGroupChatProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityGroupChatProperties {
    final Property? canDelete;
    final Property? createdAt;
    final AccountElement? groupChat;
    final Property? id;
    final Property? idGroupChat;
    final Property? idParticipant;
    final Property? isDeleted;
    final Property? isWrite;
    final AccountElement? lastMessage;
    final Property? lastMessageAt;
    final AccountElement? participant;
    final Property? unreadMessages;
    final Property? updatedAt;

    EntityGroupChatProperties({
        this.canDelete,
        this.createdAt,
        this.groupChat,
        this.id,
        this.idGroupChat,
        this.idParticipant,
        this.isDeleted,
        this.isWrite,
        this.lastMessage,
        this.lastMessageAt,
        this.participant,
        this.unreadMessages,
        this.updatedAt,
    });

    factory EntityGroupChatProperties.fromJson(Map<String, dynamic> json) => EntityGroupChatProperties(
        canDelete: json["can_delete"] == null ? null : Property.fromJson(json["can_delete"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        groupChat: json["group_chat"] == null ? null : AccountElement.fromJson(json["group_chat"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        idGroupChat: json["id_group_chat"] == null ? null : Property.fromJson(json["id_group_chat"]),
        idParticipant: json["id_participant"] == null ? null : Property.fromJson(json["id_participant"]),
        isDeleted: json["is_deleted"] == null ? null : Property.fromJson(json["is_deleted"]),
        isWrite: json["is_write"] == null ? null : Property.fromJson(json["is_write"]),
        lastMessage: json["last_message"] == null ? null : AccountElement.fromJson(json["last_message"]),
        lastMessageAt: json["last_message_at"] == null ? null : Property.fromJson(json["last_message_at"]),
        participant: json["participant"] == null ? null : AccountElement.fromJson(json["participant"]),
        unreadMessages: json["unread_messages"] == null ? null : Property.fromJson(json["unread_messages"]),
        updatedAt: json["updated_at"] == null ? null : Property.fromJson(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "can_delete": canDelete?.toJson(),
        "created_at": createdAt?.toJson(),
        "group_chat": groupChat?.toJson(),
        "id": id?.toJson(),
        "id_group_chat": idGroupChat?.toJson(),
        "id_participant": idParticipant?.toJson(),
        "is_deleted": isDeleted?.toJson(),
        "is_write": isWrite?.toJson(),
        "last_message": lastMessage?.toJson(),
        "last_message_at": lastMessageAt?.toJson(),
        "participant": participant?.toJson(),
        "unread_messages": unreadMessages?.toJson(),
        "updated_at": updatedAt?.toJson(),
    };
}

class EntityGroupsChat {
    final AccountResponseAccountMeType? type;
    final EntityGroupsChatProperties? properties;

    EntityGroupsChat({
        this.type,
        this.properties,
    });

    factory EntityGroupsChat.fromJson(Map<String, dynamic> json) => EntityGroupsChat(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityGroupsChatProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityGroupsChatProperties {
    final Property? avatar;
    final Property? groupChat;
    final Property? id;
    final Property? name;

    EntityGroupsChatProperties({
        this.avatar,
        this.groupChat,
        this.id,
        this.name,
    });

    factory EntityGroupsChatProperties.fromJson(Map<String, dynamic> json) => EntityGroupsChatProperties(
        avatar: json["avatar"] == null ? null : Property.fromJson(json["avatar"]),
        groupChat: json["group_chat"] == null ? null : Property.fromJson(json["group_chat"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar?.toJson(),
        "group_chat": groupChat?.toJson(),
        "id": id?.toJson(),
        "name": name?.toJson(),
    };
}

class EntityHistory {
    final AccountResponseAccountMeType? type;
    final EntityHistoryCircleProperties? properties;

    EntityHistory({
        this.type,
        this.properties,
    });

    factory EntityHistory.fromJson(Map<String, dynamic> json) => EntityHistory(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityHistoryCircleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityHistoryCircleProperties {
    final Property? allData;
    final Property? circle;
    final Property? data;
    final Property? id;
    final Property? normal;
    final Property? notes;
    final Property? weeks;
    final Property? height;
    final Property? weight;

    EntityHistoryCircleProperties({
        this.allData,
        this.circle,
        this.data,
        this.id,
        this.normal,
        this.notes,
        this.weeks,
        this.height,
        this.weight,
    });

    factory EntityHistoryCircleProperties.fromJson(Map<String, dynamic> json) => EntityHistoryCircleProperties(
        allData: json["all_data"] == null ? null : Property.fromJson(json["all_data"]),
        circle: json["circle"] == null ? null : Property.fromJson(json["circle"]),
        data: json["data"] == null ? null : Property.fromJson(json["data"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        normal: json["normal"] == null ? null : Property.fromJson(json["normal"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        weeks: json["weeks"] == null ? null : Property.fromJson(json["weeks"]),
        height: json["height"] == null ? null : Property.fromJson(json["height"]),
        weight: json["weight"] == null ? null : Property.fromJson(json["weight"]),
    );

    Map<String, dynamic> toJson() => {
        "all_data": allData?.toJson(),
        "circle": circle?.toJson(),
        "data": data?.toJson(),
        "id": id?.toJson(),
        "normal": normal?.toJson(),
        "notes": notes?.toJson(),
        "weeks": weeks?.toJson(),
        "height": height?.toJson(),
        "weight": weight?.toJson(),
    };
}

class EntityInsertLure {
    final AccountResponseAccountMeType? type;
    final EntityInsertLureProperties? properties;

    EntityInsertLure({
        this.type,
        this.properties,
    });

    factory EntityInsertLure.fromJson(Map<String, dynamic> json) => EntityInsertLure(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityInsertLureProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityInsertLureProperties {
    final Property? childId;
    final Property? gram;
    final Property? nameProduct;
    final Property? notes;
    final Property? reaction;
    final Phone? timeToEnd;

    EntityInsertLureProperties({
        this.childId,
        this.gram,
        this.nameProduct,
        this.notes,
        this.reaction,
        this.timeToEnd,
    });

    factory EntityInsertLureProperties.fromJson(Map<String, dynamic> json) => EntityInsertLureProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        gram: json["gram"] == null ? null : Property.fromJson(json["gram"]),
        nameProduct: json["name_product"] == null ? null : Property.fromJson(json["name_product"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        reaction: json["reaction"] == null ? null : Property.fromJson(json["reaction"]),
        timeToEnd: json["time_to_end"] == null ? null : Phone.fromJson(json["time_to_end"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
        "gram": gram?.toJson(),
        "name_product": nameProduct?.toJson(),
        "notes": notes?.toJson(),
        "reaction": reaction?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
    };
}

class EntityLureHistory {
    final AccountResponseAccountMeType? type;
    final EntityLureHistoryProperties? properties;

    EntityLureHistory({
        this.type,
        this.properties,
    });

    factory EntityLureHistory.fromJson(Map<String, dynamic> json) => EntityLureHistory(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityLureHistoryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityLureHistoryProperties {
    final Property? gram;
    final Property? nameProduct;
    final Property? notes;
    final Property? reaction;
    final Property? time;

    EntityLureHistoryProperties({
        this.gram,
        this.nameProduct,
        this.notes,
        this.reaction,
        this.time,
    });

    factory EntityLureHistoryProperties.fromJson(Map<String, dynamic> json) => EntityLureHistoryProperties(
        gram: json["gram"] == null ? null : Property.fromJson(json["gram"]),
        nameProduct: json["name_product"] == null ? null : Property.fromJson(json["name_product"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        reaction: json["reaction"] == null ? null : Property.fromJson(json["reaction"]),
        time: json["time"] == null ? null : Property.fromJson(json["time"]),
    );

    Map<String, dynamic> toJson() => {
        "gram": gram?.toJson(),
        "name_product": nameProduct?.toJson(),
        "notes": notes?.toJson(),
        "reaction": reaction?.toJson(),
        "time": time?.toJson(),
    };
}

class EntityLureHistoryTotal {
    final AccountResponseAccountMeType? type;
    final EntityLureHistoryTotalProperties? properties;

    EntityLureHistoryTotal({
        this.type,
        this.properties,
    });

    factory EntityLureHistoryTotal.fromJson(Map<String, dynamic> json) => EntityLureHistoryTotal(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityLureHistoryTotalProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityLureHistoryTotalProperties {
    final ImagesClass? pumpingLure;
    final Property? timeToEndDonTUse;
    final Property? timeToEndTotal;

    EntityLureHistoryTotalProperties({
        this.pumpingLure,
        this.timeToEndDonTUse,
        this.timeToEndTotal,
    });

    factory EntityLureHistoryTotalProperties.fromJson(Map<String, dynamic> json) => EntityLureHistoryTotalProperties(
        pumpingLure: json["pumping_lure"] == null ? null : ImagesClass.fromJson(json["pumping_lure"]),
        timeToEndDonTUse: json["time_to_end_don't_use'"] == null ? null : Property.fromJson(json["time_to_end_don't_use'"]),
        timeToEndTotal: json["time_to_end_total"] == null ? null : Property.fromJson(json["time_to_end_total"]),
    );

    Map<String, dynamic> toJson() => {
        "pumping_lure": pumpingLure?.toJson(),
        "time_to_end_don't_use'": timeToEndDonTUse?.toJson(),
        "time_to_end_total": timeToEndTotal?.toJson(),
    };
}

class EntityMainDoctor {
    final AccountResponseAccountMeType? type;
    final EntityMainDoctorProperties? properties;

    EntityMainDoctor({
        this.type,
        this.properties,
    });

    factory EntityMainDoctor.fromJson(Map<String, dynamic> json) => EntityMainDoctor(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityMainDoctorProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityMainDoctorProperties {
    final Property? data;
    final Property? doctor;
    final Property? id;
    final Property? notes;
    final Property? photo;

    EntityMainDoctorProperties({
        this.data,
        this.doctor,
        this.id,
        this.notes,
        this.photo,
    });

    factory EntityMainDoctorProperties.fromJson(Map<String, dynamic> json) => EntityMainDoctorProperties(
        data: json["data"] == null ? null : Property.fromJson(json["data"]),
        doctor: json["doctor"] == null ? null : Property.fromJson(json["doctor"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        photo: json["photo"] == null ? null : Property.fromJson(json["photo"]),
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "doctor": doctor?.toJson(),
        "id": id?.toJson(),
        "notes": notes?.toJson(),
        "photo": photo?.toJson(),
    };
}

class EntityMainDrug {
    final AccountResponseAccountMeType? type;
    final EntityMainDrugProperties? properties;

    EntityMainDrug({
        this.type,
        this.properties,
    });

    factory EntityMainDrug.fromJson(Map<String, dynamic> json) => EntityMainDrug(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityMainDrugProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityMainDrugProperties {
    final Property? doza;
    final Property? id;
    final Property? imageId;
    final Property? isEnd;
    final Property? name;
    final Property? notes;
    final Property? reminder;
    final Property? viaTime;

    EntityMainDrugProperties({
        this.doza,
        this.id,
        this.imageId,
        this.isEnd,
        this.name,
        this.notes,
        this.reminder,
        this.viaTime,
    });

    factory EntityMainDrugProperties.fromJson(Map<String, dynamic> json) => EntityMainDrugProperties(
        doza: json["doza"] == null ? null : Property.fromJson(json["doza"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        imageId: json["image_id"] == null ? null : Property.fromJson(json["image_id"]),
        isEnd: json["isEnd"] == null ? null : Property.fromJson(json["isEnd"]),
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        reminder: json["reminder"] == null ? null : Property.fromJson(json["reminder"]),
        viaTime: json["viaTime"] == null ? null : Property.fromJson(json["viaTime"]),
    );

    Map<String, dynamic> toJson() => {
        "doza": doza?.toJson(),
        "id": id?.toJson(),
        "image_id": imageId?.toJson(),
        "isEnd": isEnd?.toJson(),
        "name": name?.toJson(),
        "notes": notes?.toJson(),
        "reminder": reminder?.toJson(),
        "viaTime": viaTime?.toJson(),
    };
}

class EntityMessageDto {
    final AccountResponseAccountMeType? type;
    final EntityMessageDtoProperties? properties;

    EntityMessageDto({
        this.type,
        this.properties,
    });

    factory EntityMessageDto.fromJson(Map<String, dynamic> json) => EntityMessageDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityMessageDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityMessageDtoProperties {
    final Property? filePath;
    final Property? filename;
    final Property? typeFile;

    EntityMessageDtoProperties({
        this.filePath,
        this.filename,
        this.typeFile,
    });

    factory EntityMessageDtoProperties.fromJson(Map<String, dynamic> json) => EntityMessageDtoProperties(
        filePath: json["file_path"] == null ? null : Property.fromJson(json["file_path"]),
        filename: json["filename"] == null ? null : Property.fromJson(json["filename"]),
        typeFile: json["type_file"] == null ? null : Property.fromJson(json["type_file"]),
    );

    Map<String, dynamic> toJson() => {
        "file_path": filePath?.toJson(),
        "filename": filename?.toJson(),
        "type_file": typeFile?.toJson(),
    };
}

class EntityMessage {
    final AccountResponseAccountMeType? type;
    final EntityMessageRespProperties? properties;

    EntityMessage({
        this.type,
        this.properties,
    });

    factory EntityMessage.fromJson(Map<String, dynamic> json) => EntityMessage(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityMessageRespProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityMessageRespProperties {
    final Property? chatId;
    final Property? createdAt;
    final ImagesClass? files;
    final Property? id;
    final Property? readAt;
    final AccountElement? reply;
    final Property? senderId;
    final Property? text;

    EntityMessageRespProperties({
        this.chatId,
        this.createdAt,
        this.files,
        this.id,
        this.readAt,
        this.reply,
        this.senderId,
        this.text,
    });

    factory EntityMessageRespProperties.fromJson(Map<String, dynamic> json) => EntityMessageRespProperties(
        chatId: json["chat_id"] == null ? null : Property.fromJson(json["chat_id"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        files: json["files"] == null ? null : ImagesClass.fromJson(json["files"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        readAt: json["read_at"] == null ? null : Property.fromJson(json["read_at"]),
        reply: json["reply"] == null ? null : AccountElement.fromJson(json["reply"]),
        senderId: json["sender_id"] == null ? null : Property.fromJson(json["sender_id"]),
        text: json["text"] == null ? null : Property.fromJson(json["text"]),
    );

    Map<String, dynamic> toJson() => {
        "chat_id": chatId?.toJson(),
        "created_at": createdAt?.toJson(),
        "files": files?.toJson(),
        "id": id?.toJson(),
        "read_at": readAt?.toJson(),
        "reply": reply?.toJson(),
        "sender_id": senderId?.toJson(),
        "text": text?.toJson(),
    };
}

class EntityNotification {
    final AccountResponseAccountMeType? type;
    final EntityNotificationProperties? properties;

    EntityNotification({
        this.type,
        this.properties,
    });

    factory EntityNotification.fromJson(Map<String, dynamic> json) => EntityNotification(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityNotificationProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityNotificationProperties {
    final Property? createdAt;
    final Property? id;
    final Metadata? metadata;
    final Property? read;
    final Property? text;
    final Property? type;
    final Property? userId;

    EntityNotificationProperties({
        this.createdAt,
        this.id,
        this.metadata,
        this.read,
        this.text,
        this.type,
        this.userId,
    });

    factory EntityNotificationProperties.fromJson(Map<String, dynamic> json) => EntityNotificationProperties(
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        metadata: json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]),
        read: json["read"] == null ? null : Property.fromJson(json["read"]),
        text: json["text"] == null ? null : Property.fromJson(json["text"]),
        type: json["type"] == null ? null : Property.fromJson(json["type"]),
        userId: json["user_id"] == null ? null : Property.fromJson(json["user_id"]),
    );

    Map<String, dynamic> toJson() => {
        "created_at": createdAt?.toJson(),
        "id": id?.toJson(),
        "metadata": metadata?.toJson(),
        "read": read?.toJson(),
        "text": text?.toJson(),
        "type": type?.toJson(),
        "user_id": userId?.toJson(),
    };
}

class Metadata {
    final AccountResponseAccountMeType? type;
    final bool? additionalProperties;

    Metadata({
        this.type,
        this.additionalProperties,
    });

    factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        additionalProperties: json["additionalProperties"],
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "additionalProperties": additionalProperties,
    };
}

class EntityOnlineSchool {
    final AccountResponseAccountMeType? type;
    final EntityOnlineSchoolProperties? properties;

    EntityOnlineSchool({
        this.type,
        this.properties,
    });

    factory EntityOnlineSchool.fromJson(Map<String, dynamic> json) => EntityOnlineSchool(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityOnlineSchoolProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityOnlineSchoolProperties {
    final Property? account;
    final Property? createdAt;
    final Property? id;
    final Property? name;
    final Property? updatedAt;

    EntityOnlineSchoolProperties({
        this.account,
        this.createdAt,
        this.id,
        this.name,
        this.updatedAt,
    });

    factory EntityOnlineSchoolProperties.fromJson(Map<String, dynamic> json) => EntityOnlineSchoolProperties(
        account: json["account"] == null ? null : Property.fromJson(json["account"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
        updatedAt: json["updated_at"] == null ? null : Property.fromJson(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "account": account?.toJson(),
        "created_at": createdAt?.toJson(),
        "id": id?.toJson(),
        "name": name?.toJson(),
        "updated_at": updatedAt?.toJson(),
    };
}

class EntityOnlineSchoolCourse {
    final AccountResponseAccountMeType? type;
    final EntityOnlineSchoolCourseProperties? properties;

    EntityOnlineSchoolCourse({
        this.type,
        this.properties,
    });

    factory EntityOnlineSchoolCourse.fromJson(Map<String, dynamic> json) => EntityOnlineSchoolCourse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityOnlineSchoolCourseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityOnlineSchoolCourseProperties {
    final Property? createdAt;
    final Property? id;
    final Property? link;
    final Property? onlineSchoolId;
    final Property? shortDescription;
    final Property? title;

    EntityOnlineSchoolCourseProperties({
        this.createdAt,
        this.id,
        this.link,
        this.onlineSchoolId,
        this.shortDescription,
        this.title,
    });

    factory EntityOnlineSchoolCourseProperties.fromJson(Map<String, dynamic> json) => EntityOnlineSchoolCourseProperties(
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        link: json["link"] == null ? null : Property.fromJson(json["link"]),
        onlineSchoolId: json["online_school_id"] == null ? null : Property.fromJson(json["online_school_id"]),
        shortDescription: json["short_description"] == null ? null : Property.fromJson(json["short_description"]),
        title: json["title"] == null ? null : Property.fromJson(json["title"]),
    );

    Map<String, dynamic> toJson() => {
        "created_at": createdAt?.toJson(),
        "id": id?.toJson(),
        "link": link?.toJson(),
        "online_school_id": onlineSchoolId?.toJson(),
        "short_description": shortDescription?.toJson(),
        "title": title?.toJson(),
    };
}

class EntityOnlineSchoolNumber {
    final AccountResponseAccountMeType? type;
    final EntityOnlineSchoolNumberProperties? properties;

    EntityOnlineSchoolNumber({
        this.type,
        this.properties,
    });

    factory EntityOnlineSchoolNumber.fromJson(Map<String, dynamic> json) => EntityOnlineSchoolNumber(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityOnlineSchoolNumberProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityOnlineSchoolNumberProperties {
    final Property? id;
    final Property? onlineSchoolId;
    final Property? phone;

    EntityOnlineSchoolNumberProperties({
        this.id,
        this.onlineSchoolId,
        this.phone,
    });

    factory EntityOnlineSchoolNumberProperties.fromJson(Map<String, dynamic> json) => EntityOnlineSchoolNumberProperties(
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        onlineSchoolId: json["online_school_id"] == null ? null : Property.fromJson(json["online_school_id"]),
        phone: json["phone"] == null ? null : Property.fromJson(json["phone"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id?.toJson(),
        "online_school_id": onlineSchoolId?.toJson(),
        "phone": phone?.toJson(),
    };
}

class EntityOnlineSchoolResponse {
    final AccountResponseAccountMeType? type;
    final EntityOnlineSchoolResponseProperties? properties;

    EntityOnlineSchoolResponse({
        this.type,
        this.properties,
    });

    factory EntityOnlineSchoolResponse.fromJson(Map<String, dynamic> json) => EntityOnlineSchoolResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityOnlineSchoolResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityOnlineSchoolResponseProperties {
    final AccountElement? account;
    final Property? articleNumber;
    final ImagesClass? articles;
    final Property? course;
    final Property? createdAt;
    final Property? id;
    final Property? name;
    final Property? updatedAt;

    EntityOnlineSchoolResponseProperties({
        this.account,
        this.articleNumber,
        this.articles,
        this.course,
        this.createdAt,
        this.id,
        this.name,
        this.updatedAt,
    });

    factory EntityOnlineSchoolResponseProperties.fromJson(Map<String, dynamic> json) => EntityOnlineSchoolResponseProperties(
        account: json["account"] == null ? null : AccountElement.fromJson(json["account"]),
        articleNumber: json["article_number"] == null ? null : Property.fromJson(json["article_number"]),
        articles: json["articles"] == null ? null : ImagesClass.fromJson(json["articles"]),
        course: json["course"] == null ? null : Property.fromJson(json["course"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
        updatedAt: json["updated_at"] == null ? null : Property.fromJson(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "account": account?.toJson(),
        "article_number": articleNumber?.toJson(),
        "articles": articles?.toJson(),
        "course": course?.toJson(),
        "created_at": createdAt?.toJson(),
        "id": id?.toJson(),
        "name": name?.toJson(),
        "updated_at": updatedAt?.toJson(),
    };
}

class EntityPromocode {
    final AccountResponseAccountMeType? type;
    final EntityPromocodeProperties? properties;

    EntityPromocode({
        this.type,
        this.properties,
    });

    factory EntityPromocode.fromJson(Map<String, dynamic> json) => EntityPromocode(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityPromocodeProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityPromocodeProperties {
    final Property? countPromo;
    final Property? createdAt;
    final Property? id;
    final Property? name;
    final Property? status;
    final Property? typePromo;
    final Property? usedAt;

    EntityPromocodeProperties({
        this.countPromo,
        this.createdAt,
        this.id,
        this.name,
        this.status,
        this.typePromo,
        this.usedAt,
    });

    factory EntityPromocodeProperties.fromJson(Map<String, dynamic> json) => EntityPromocodeProperties(
        countPromo: json["count_promo"] == null ? null : Property.fromJson(json["count_promo"]),
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
        status: json["status"] == null ? null : Property.fromJson(json["status"]),
        typePromo: json["type_promo"] == null ? null : Property.fromJson(json["type_promo"]),
        usedAt: json["used_at"] == null ? null : Property.fromJson(json["used_at"]),
    );

    Map<String, dynamic> toJson() => {
        "count_promo": countPromo?.toJson(),
        "created_at": createdAt?.toJson(),
        "id": id?.toJson(),
        "name": name?.toJson(),
        "status": status?.toJson(),
        "type_promo": typePromo?.toJson(),
        "used_at": usedAt?.toJson(),
    };
}

class EntityPumpingHistoryTotal {
    final AccountResponseAccountMeType? type;
    final EntityPumpingHistoryTotalProperties? properties;

    EntityPumpingHistoryTotal({
        this.type,
        this.properties,
    });

    factory EntityPumpingHistoryTotal.fromJson(Map<String, dynamic> json) => EntityPumpingHistoryTotal(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityPumpingHistoryTotalProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityPumpingHistoryTotalProperties {
    final ImagesClass? pumpingHistory;
    final Property? timeToEnd;
    final Property? timeToEndTotal;
    final Property? totalLeft;
    final Property? totalRight;
    final Property? totalTotal;

    EntityPumpingHistoryTotalProperties({
        this.pumpingHistory,
        this.timeToEnd,
        this.timeToEndTotal,
        this.totalLeft,
        this.totalRight,
        this.totalTotal,
    });

    factory EntityPumpingHistoryTotalProperties.fromJson(Map<String, dynamic> json) => EntityPumpingHistoryTotalProperties(
        pumpingHistory: json["pumping_history"] == null ? null : ImagesClass.fromJson(json["pumping_history"]),
        timeToEnd: json["time_to_end"] == null ? null : Property.fromJson(json["time_to_end"]),
        timeToEndTotal: json["time_to_end_total"] == null ? null : Property.fromJson(json["time_to_end_total"]),
        totalLeft: json["total_left"] == null ? null : Property.fromJson(json["total_left"]),
        totalRight: json["total_right"] == null ? null : Property.fromJson(json["total_right"]),
        totalTotal: json["total_total"] == null ? null : Property.fromJson(json["total_total"]),
    );

    Map<String, dynamic> toJson() => {
        "pumping_history": pumpingHistory?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
        "time_to_end_total": timeToEndTotal?.toJson(),
        "total_left": totalLeft?.toJson(),
        "total_right": totalRight?.toJson(),
        "total_total": totalTotal?.toJson(),
    };
}

class EntitySingleChat {
    final AccountResponseAccountMeType? type;
    final EntitySingleChatProperties? properties;

    EntitySingleChat({
        this.type,
        this.properties,
    });

    factory EntitySingleChat.fromJson(Map<String, dynamic> json) => EntitySingleChat(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntitySingleChatProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntitySingleChatProperties {
    final Property? createdAt;
    final Property? id;
    final Property? isDeleted;
    final AccountElement? lastMessage;
    final Property? lastMessageAt;
    final Property? participant1Id;
    final Property? participant1Unread;
    final Property? participant2Id;
    final Property? participant2Unread;
    final AccountElement? participant1;
    final AccountElement? participant2;
    final Property? profession;
    final Property? professionId;
    final Property? unreadMessages;

    EntitySingleChatProperties({
        this.createdAt,
        this.id,
        this.isDeleted,
        this.lastMessage,
        this.lastMessageAt,
        this.participant1Id,
        this.participant1Unread,
        this.participant2Id,
        this.participant2Unread,
        this.participant1,
        this.participant2,
        this.profession,
        this.professionId,
        this.unreadMessages,
    });

    factory EntitySingleChatProperties.fromJson(Map<String, dynamic> json) => EntitySingleChatProperties(
        createdAt: json["created_at"] == null ? null : Property.fromJson(json["created_at"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        isDeleted: json["is_deleted"] == null ? null : Property.fromJson(json["is_deleted"]),
        lastMessage: json["last_message"] == null ? null : AccountElement.fromJson(json["last_message"]),
        lastMessageAt: json["last_message_at"] == null ? null : Property.fromJson(json["last_message_at"]),
        participant1Id: json["participant1_id"] == null ? null : Property.fromJson(json["participant1_id"]),
        participant1Unread: json["participant1_unread"] == null ? null : Property.fromJson(json["participant1_unread"]),
        participant2Id: json["participant2_id"] == null ? null : Property.fromJson(json["participant2_id"]),
        participant2Unread: json["participant2_unread"] == null ? null : Property.fromJson(json["participant2_unread"]),
        participant1: json["participant_1"] == null ? null : AccountElement.fromJson(json["participant_1"]),
        participant2: json["participant_2"] == null ? null : AccountElement.fromJson(json["participant_2"]),
        profession: json["profession"] == null ? null : Property.fromJson(json["profession"]),
        professionId: json["profession_id"] == null ? null : Property.fromJson(json["profession_id"]),
        unreadMessages: json["unread_messages"] == null ? null : Property.fromJson(json["unread_messages"]),
    );

    Map<String, dynamic> toJson() => {
        "created_at": createdAt?.toJson(),
        "id": id?.toJson(),
        "is_deleted": isDeleted?.toJson(),
        "last_message": lastMessage?.toJson(),
        "last_message_at": lastMessageAt?.toJson(),
        "participant1_id": participant1Id?.toJson(),
        "participant1_unread": participant1Unread?.toJson(),
        "participant2_id": participant2Id?.toJson(),
        "participant2_unread": participant2Unread?.toJson(),
        "participant_1": participant1?.toJson(),
        "participant_2": participant2?.toJson(),
        "profession": profession?.toJson(),
        "profession_id": professionId?.toJson(),
        "unread_messages": unreadMessages?.toJson(),
    };
}

class EntityStatAccountBuy {
    final AccountResponseAccountMeType? type;
    final EntityStatAccountBuyProperties? properties;

    EntityStatAccountBuy({
        this.type,
        this.properties,
    });

    factory EntityStatAccountBuy.fromJson(Map<String, dynamic> json) => EntityStatAccountBuy(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityStatAccountBuyProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityStatAccountBuyProperties {
    final Property? countSub;
    final Property? howMuchSub;
    final Property? typeSub;

    EntityStatAccountBuyProperties({
        this.countSub,
        this.howMuchSub,
        this.typeSub,
    });

    factory EntityStatAccountBuyProperties.fromJson(Map<String, dynamic> json) => EntityStatAccountBuyProperties(
        countSub: json["count_sub"] == null ? null : Property.fromJson(json["count_sub"]),
        howMuchSub: json["how_much_sub"] == null ? null : Property.fromJson(json["how_much_sub"]),
        typeSub: json["type_sub"] == null ? null : Property.fromJson(json["type_sub"]),
    );

    Map<String, dynamic> toJson() => {
        "count_sub": countSub?.toJson(),
        "how_much_sub": howMuchSub?.toJson(),
        "type_sub": typeSub?.toJson(),
    };
}

class EntityStatusOfChild {
    final AccountResponseAccountMeType? type;
    final EntityStatusOfChildProperties? properties;

    EntityStatusOfChild({
        this.type,
        this.properties,
    });

    factory EntityStatusOfChild.fromJson(Map<String, dynamic> json) => EntityStatusOfChild(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityStatusOfChildProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityStatusOfChildProperties {
    final Property? body;
    final Property? description;
    final Property? title;

    EntityStatusOfChildProperties({
        this.body,
        this.description,
        this.title,
    });

    factory EntityStatusOfChildProperties.fromJson(Map<String, dynamic> json) => EntityStatusOfChildProperties(
        body: json["body"] == null ? null : Property.fromJson(json["body"]),
        description: json["description"] == null ? null : Property.fromJson(json["description"]),
        title: json["title"] == null ? null : Property.fromJson(json["title"]),
    );

    Map<String, dynamic> toJson() => {
        "body": body?.toJson(),
        "description": description?.toJson(),
        "title": title?.toJson(),
    };
}

class EntityTable {
    final AccountResponseAccountMeType? type;
    final EntityTableProperties? properties;

    EntityTable({
        this.type,
        this.properties,
    });

    factory EntityTable.fromJson(Map<String, dynamic> json) => EntityTable(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityTableProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityTableProperties {
    final Property? circle;
    final Property? data;
    final Property? dateTime;
    final Property? height;
    final Property? normalCircle;
    final Property? normalHeight;
    final Property? normalWeight;
    final Property? notes;
    final Property? week;
    final Property? weight;

    EntityTableProperties({
        this.circle,
        this.data,
        this.dateTime,
        this.height,
        this.normalCircle,
        this.normalHeight,
        this.normalWeight,
        this.notes,
        this.week,
        this.weight,
    });

    factory EntityTableProperties.fromJson(Map<String, dynamic> json) => EntityTableProperties(
        circle: json["circle"] == null ? null : Property.fromJson(json["circle"]),
        data: json["data"] == null ? null : Property.fromJson(json["data"]),
        dateTime: json["date_time"] == null ? null : Property.fromJson(json["date_time"]),
        height: json["height"] == null ? null : Property.fromJson(json["height"]),
        normalCircle: json["normal_circle"] == null ? null : Property.fromJson(json["normal_circle"]),
        normalHeight: json["normal_height"] == null ? null : Property.fromJson(json["normal_height"]),
        normalWeight: json["normal_weight"] == null ? null : Property.fromJson(json["normal_weight"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        week: json["week"] == null ? null : Property.fromJson(json["week"]),
        weight: json["weight"] == null ? null : Property.fromJson(json["weight"]),
    );

    Map<String, dynamic> toJson() => {
        "circle": circle?.toJson(),
        "data": data?.toJson(),
        "date_time": dateTime?.toJson(),
        "height": height?.toJson(),
        "normal_circle": normalCircle?.toJson(),
        "normal_height": normalHeight?.toJson(),
        "normal_weight": normalWeight?.toJson(),
        "notes": notes?.toJson(),
        "week": week?.toJson(),
        "weight": weight?.toJson(),
    };
}

class EntityTableCircle {
    final AccountResponseAccountMeType? type;
    final EntityTableCircleProperties? properties;

    EntityTableCircle({
        this.type,
        this.properties,
    });

    factory EntityTableCircle.fromJson(Map<String, dynamic> json) => EntityTableCircle(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityTableCircleProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityTableCircleProperties {
    final AccountElement? currentCircle;
    final AccountElement? dynamicsCircle;
    final ImagesClass? table;

    EntityTableCircleProperties({
        this.currentCircle,
        this.dynamicsCircle,
        this.table,
    });

    factory EntityTableCircleProperties.fromJson(Map<String, dynamic> json) => EntityTableCircleProperties(
        currentCircle: json["current_circle"] == null ? null : AccountElement.fromJson(json["current_circle"]),
        dynamicsCircle: json["dynamics_circle"] == null ? null : AccountElement.fromJson(json["dynamics_circle"]),
        table: json["table"] == null ? null : ImagesClass.fromJson(json["table"]),
    );

    Map<String, dynamic> toJson() => {
        "current_circle": currentCircle?.toJson(),
        "dynamics_circle": dynamicsCircle?.toJson(),
        "table": table?.toJson(),
    };
}

class EntityTableFeed {
    final AccountResponseAccountMeType? type;
    final EntityTableFeedProperties? properties;

    EntityTableFeed({
        this.type,
        this.properties,
    });

    factory EntityTableFeed.fromJson(Map<String, dynamic> json) => EntityTableFeed(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityTableFeedProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityTableFeedProperties {
    final Property? chest;
    final Property? food;
    final Property? lure;
    final Property? notes;
    final Property? time;

    EntityTableFeedProperties({
        this.chest,
        this.food,
        this.lure,
        this.notes,
        this.time,
    });

    factory EntityTableFeedProperties.fromJson(Map<String, dynamic> json) => EntityTableFeedProperties(
        chest: json["chest"] == null ? null : Property.fromJson(json["chest"]),
        food: json["food"] == null ? null : Property.fromJson(json["food"]),
        lure: json["lure"] == null ? null : Property.fromJson(json["lure"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        time: json["time"] == null ? null : Property.fromJson(json["time"]),
    );

    Map<String, dynamic> toJson() => {
        "chest": chest?.toJson(),
        "food": food?.toJson(),
        "lure": lure?.toJson(),
        "notes": notes?.toJson(),
        "time": time?.toJson(),
    };
}

class EntityTableFeedTotal {
    final AccountResponseAccountMeType? type;
    final EntityTableFeedTotalProperties? properties;

    EntityTableFeedTotal({
        this.type,
        this.properties,
    });

    factory EntityTableFeedTotal.fromJson(Map<String, dynamic> json) => EntityTableFeedTotal(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityTableFeedTotalProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityTableFeedTotalProperties {
    final ImagesClass? table;
    final Property? timeToEndTotal;

    EntityTableFeedTotalProperties({
        this.table,
        this.timeToEndTotal,
    });

    factory EntityTableFeedTotalProperties.fromJson(Map<String, dynamic> json) => EntityTableFeedTotalProperties(
        table: json["table"] == null ? null : ImagesClass.fromJson(json["table"]),
        timeToEndTotal: json["time_to_end_total"] == null ? null : Property.fromJson(json["time_to_end_total"]),
    );

    Map<String, dynamic> toJson() => {
        "table": table?.toJson(),
        "time_to_end_total": timeToEndTotal?.toJson(),
    };
}

class EntityTableHeight {
    final AccountResponseAccountMeType? type;
    final EntityTableHeightProperties? properties;

    EntityTableHeight({
        this.type,
        this.properties,
    });

    factory EntityTableHeight.fromJson(Map<String, dynamic> json) => EntityTableHeight(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityTableHeightProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityTableHeightProperties {
    final AccountElement? currentHeight;
    final AccountElement? dynamicsHeight;
    final ImagesClass? table;

    EntityTableHeightProperties({
        this.currentHeight,
        this.dynamicsHeight,
        this.table,
    });

    factory EntityTableHeightProperties.fromJson(Map<String, dynamic> json) => EntityTableHeightProperties(
        currentHeight: json["current_height"] == null ? null : AccountElement.fromJson(json["current_height"]),
        dynamicsHeight: json["dynamics_height"] == null ? null : AccountElement.fromJson(json["dynamics_height"]),
        table: json["table"] == null ? null : ImagesClass.fromJson(json["table"]),
    );

    Map<String, dynamic> toJson() => {
        "current_height": currentHeight?.toJson(),
        "dynamics_height": dynamicsHeight?.toJson(),
        "table": table?.toJson(),
    };
}

class EntityTableSleepCryTotal {
    final AccountResponseAccountMeType? type;
    final EntityTableSleepCryTotalProperties? properties;

    EntityTableSleepCryTotal({
        this.type,
        this.properties,
    });

    factory EntityTableSleepCryTotal.fromJson(Map<String, dynamic> json) => EntityTableSleepCryTotal(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityTableSleepCryTotalProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityTableSleepCryTotalProperties {
    final Property? cry;
    final Property? notes;
    final Property? sleep;
    final Property? time;

    EntityTableSleepCryTotalProperties({
        this.cry,
        this.notes,
        this.sleep,
        this.time,
    });

    factory EntityTableSleepCryTotalProperties.fromJson(Map<String, dynamic> json) => EntityTableSleepCryTotalProperties(
        cry: json["cry"] == null ? null : Property.fromJson(json["cry"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        sleep: json["sleep"] == null ? null : Property.fromJson(json["sleep"]),
        time: json["time"] == null ? null : Property.fromJson(json["time"]),
    );

    Map<String, dynamic> toJson() => {
        "cry": cry?.toJson(),
        "notes": notes?.toJson(),
        "sleep": sleep?.toJson(),
        "time": time?.toJson(),
    };
}

class EntityTableWeight {
    final AccountResponseAccountMeType? type;
    final EntityTableWeightProperties? properties;

    EntityTableWeight({
        this.type,
        this.properties,
    });

    factory EntityTableWeight.fromJson(Map<String, dynamic> json) => EntityTableWeight(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityTableWeightProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityTableWeightProperties {
    final AccountElement? currentWeight;
    final AccountElement? dynamicsWeight;
    final ImagesClass? table;

    EntityTableWeightProperties({
        this.currentWeight,
        this.dynamicsWeight,
        this.table,
    });

    factory EntityTableWeightProperties.fromJson(Map<String, dynamic> json) => EntityTableWeightProperties(
        currentWeight: json["current_weight"] == null ? null : AccountElement.fromJson(json["current_weight"]),
        dynamicsWeight: json["dynamics_weight"] == null ? null : AccountElement.fromJson(json["dynamics_weight"]),
        table: json["table"] == null ? null : ImagesClass.fromJson(json["table"]),
    );

    Map<String, dynamic> toJson() => {
        "current_weight": currentWeight?.toJson(),
        "dynamics_weight": dynamicsWeight?.toJson(),
        "table": table?.toJson(),
    };
}

class EntityTemperatureHistory {
    final AccountResponseAccountMeType? type;
    final EntityTemperatureHistoryProperties? properties;

    EntityTemperatureHistory({
        this.type,
        this.properties,
    });

    factory EntityTemperatureHistory.fromJson(Map<String, dynamic> json) => EntityTemperatureHistory(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityTemperatureHistoryProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityTemperatureHistoryProperties {
    final Property? isBad;
    final Property? notes;
    final Property? temperatures;
    final Property? time;

    EntityTemperatureHistoryProperties({
        this.isBad,
        this.notes,
        this.temperatures,
        this.time,
    });

    factory EntityTemperatureHistoryProperties.fromJson(Map<String, dynamic> json) => EntityTemperatureHistoryProperties(
        isBad: json["is_bad"] == null ? null : Property.fromJson(json["is_bad"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        temperatures: json["temperatures"] == null ? null : Property.fromJson(json["temperatures"]),
        time: json["time"] == null ? null : Property.fromJson(json["time"]),
    );

    Map<String, dynamic> toJson() => {
        "is_bad": isBad?.toJson(),
        "notes": notes?.toJson(),
        "temperatures": temperatures?.toJson(),
        "time": time?.toJson(),
    };
}

class EntityTemperatureHistoryTotal {
    final AccountResponseAccountMeType? type;
    final EntityTemperatureHistoryTotalProperties? properties;

    EntityTemperatureHistoryTotal({
        this.type,
        this.properties,
    });

    factory EntityTemperatureHistoryTotal.fromJson(Map<String, dynamic> json) => EntityTemperatureHistoryTotal(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityTemperatureHistoryTotalProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityTemperatureHistoryTotalProperties {
    final ImagesClass? temperatureHistory;
    final Property? timeToMonths;

    EntityTemperatureHistoryTotalProperties({
        this.temperatureHistory,
        this.timeToMonths,
    });

    factory EntityTemperatureHistoryTotalProperties.fromJson(Map<String, dynamic> json) => EntityTemperatureHistoryTotalProperties(
        temperatureHistory: json["temperature_history"] == null ? null : ImagesClass.fromJson(json["temperature_history"]),
        timeToMonths: json["time_to_months"] == null ? null : Property.fromJson(json["time_to_months"]),
    );

    Map<String, dynamic> toJson() => {
        "temperature_history": temperatureHistory?.toJson(),
        "time_to_months": timeToMonths?.toJson(),
    };
}

class Response {
    final AccountResponseAccountMeType? type;
    final EntityUserResponseProperties? properties;

    Response({
        this.type,
        this.properties,
    });

    factory Response.fromJson(Map<String, dynamic> json) => Response(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityUserResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityUserResponseProperties {
    final AccountElement? account;
    final ImagesClass? childs;
    final AccountElement? user;

    EntityUserResponseProperties({
        this.account,
        this.childs,
        this.user,
    });

    factory EntityUserResponseProperties.fromJson(Map<String, dynamic> json) => EntityUserResponseProperties(
        account: json["account"] == null ? null : AccountElement.fromJson(json["account"]),
        childs: json["childs"] == null ? null : ImagesClass.fromJson(json["childs"]),
        user: json["user"] == null ? null : AccountElement.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "account": account?.toJson(),
        "childs": childs?.toJson(),
        "user": user?.toJson(),
    };
}

class EntityVaccinationMain {
    final AccountResponseAccountMeType? type;
    final EntityVaccinationMainProperties? properties;

    EntityVaccinationMain({
        this.type,
        this.properties,
    });

    factory EntityVaccinationMain.fromJson(Map<String, dynamic> json) => EntityVaccinationMain(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : EntityVaccinationMainProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class EntityVaccinationMainProperties {
    final Property? age;
    final Property? ageDescription;
    final Property? id;
    final Property? mark;
    final Property? markDescription;
    final Property? name;

    EntityVaccinationMainProperties({
        this.age,
        this.ageDescription,
        this.id,
        this.mark,
        this.markDescription,
        this.name,
    });

    factory EntityVaccinationMainProperties.fromJson(Map<String, dynamic> json) => EntityVaccinationMainProperties(
        age: json["age"] == null ? null : Property.fromJson(json["age"]),
        ageDescription: json["age_description"] == null ? null : Property.fromJson(json["age_description"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        mark: json["mark"] == null ? null : Property.fromJson(json["mark"]),
        markDescription: json["markDescription"] == null ? null : Property.fromJson(json["markDescription"]),
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "age": age?.toJson(),
        "age_description": ageDescription?.toJson(),
        "id": id?.toJson(),
        "mark": mark?.toJson(),
        "markDescription": markDescription?.toJson(),
        "name": name?.toJson(),
    };
}

class FeedInsertChestDto {
    final AccountResponseAccountMeType? type;
    final FeedInsertChestDtoProperties? properties;

    FeedInsertChestDto({
        this.type,
        this.properties,
    });

    factory FeedInsertChestDto.fromJson(Map<String, dynamic> json) => FeedInsertChestDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : FeedInsertChestDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class FeedInsertChestDtoProperties {
    final Property? childId;
    final Phone? left;
    final Property? notes;
    final Phone? right;
    final Phone? timeToEnd;

    FeedInsertChestDtoProperties({
        this.childId,
        this.left,
        this.notes,
        this.right,
        this.timeToEnd,
    });

    factory FeedInsertChestDtoProperties.fromJson(Map<String, dynamic> json) => FeedInsertChestDtoProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        left: json["left"] == null ? null : Phone.fromJson(json["left"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        right: json["right"] == null ? null : Phone.fromJson(json["right"]),
        timeToEnd: json["time_to_end"] == null ? null : Phone.fromJson(json["time_to_end"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
        "left": left?.toJson(),
        "notes": notes?.toJson(),
        "right": right?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
    };
}

class FeedInsertFoodDto {
    final AccountResponseAccountMeType? type;
    final FeedInsertFoodDtoProperties? properties;

    FeedInsertFoodDto({
        this.type,
        this.properties,
    });

    factory FeedInsertFoodDto.fromJson(Map<String, dynamic> json) => FeedInsertFoodDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : FeedInsertFoodDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class FeedInsertFoodDtoProperties {
    final Chest? chest;
    final Property? childId;
    final Chest? mixture;
    final Property? notes;
    final Phone? timeToEnd;

    FeedInsertFoodDtoProperties({
        this.chest,
        this.childId,
        this.mixture,
        this.notes,
        this.timeToEnd,
    });

    factory FeedInsertFoodDtoProperties.fromJson(Map<String, dynamic> json) => FeedInsertFoodDtoProperties(
        chest: json["chest"] == null ? null : Chest.fromJson(json["chest"]),
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        mixture: json["mixture"] == null ? null : Chest.fromJson(json["mixture"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        timeToEnd: json["time_to_end"] == null ? null : Phone.fromJson(json["time_to_end"]),
    );

    Map<String, dynamic> toJson() => {
        "chest": chest?.toJson(),
        "child_id": childId?.toJson(),
        "mixture": mixture?.toJson(),
        "notes": notes?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
    };
}

class FeedInsertLureDto {
    final AccountResponseAccountMeType? type;
    final FeedInsertLureDtoProperties? properties;

    FeedInsertLureDto({
        this.type,
        this.properties,
    });

    factory FeedInsertLureDto.fromJson(Map<String, dynamic> json) => FeedInsertLureDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : FeedInsertLureDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class FeedInsertLureDtoProperties {
    final ImagesClass? lure;

    FeedInsertLureDtoProperties({
        this.lure,
    });

    factory FeedInsertLureDtoProperties.fromJson(Map<String, dynamic> json) => FeedInsertLureDtoProperties(
        lure: json["lure"] == null ? null : ImagesClass.fromJson(json["lure"]),
    );

    Map<String, dynamic> toJson() => {
        "lure": lure?.toJson(),
    };
}

class FeedInsertPumpingDto {
    final AccountResponseAccountMeType? type;
    final FeedInsertPumpingDtoProperties? properties;

    FeedInsertPumpingDto({
        this.type,
        this.properties,
    });

    factory FeedInsertPumpingDto.fromJson(Map<String, dynamic> json) => FeedInsertPumpingDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : FeedInsertPumpingDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class FeedInsertPumpingDtoProperties {
    final Property? all;
    final Property? childId;
    final Chest? left;
    final Property? notes;
    final Chest? right;
    final Phone? timeToEnd;

    FeedInsertPumpingDtoProperties({
        this.all,
        this.childId,
        this.left,
        this.notes,
        this.right,
        this.timeToEnd,
    });

    factory FeedInsertPumpingDtoProperties.fromJson(Map<String, dynamic> json) => FeedInsertPumpingDtoProperties(
        all: json["all"] == null ? null : Property.fromJson(json["all"]),
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        left: json["left"] == null ? null : Chest.fromJson(json["left"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        right: json["right"] == null ? null : Chest.fromJson(json["right"]),
        timeToEnd: json["time_to_end"] == null ? null : Phone.fromJson(json["time_to_end"]),
    );

    Map<String, dynamic> toJson() => {
        "all": all?.toJson(),
        "child_id": childId?.toJson(),
        "left": left?.toJson(),
        "notes": notes?.toJson(),
        "right": right?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
    };
}

class FeedbackCreateDto {
    final AccountResponseAccountMeType? type;
    final FeedbackCreateDtoProperties? properties;

    FeedbackCreateDto({
        this.type,
        this.properties,
    });

    factory FeedbackCreateDto.fromJson(Map<String, dynamic> json) => FeedbackCreateDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : FeedbackCreateDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class FeedbackCreateDtoProperties {
    final Property? text;

    FeedbackCreateDtoProperties({
        this.text,
    });

    factory FeedbackCreateDtoProperties.fromJson(Map<String, dynamic> json) => FeedbackCreateDtoProperties(
        text: json["text"] == null ? null : Property.fromJson(json["text"]),
    );

    Map<String, dynamic> toJson() => {
        "text": text?.toJson(),
    };
}

class GeoCitiesResponse {
    final AccountResponseAccountMeType? type;
    final GeoCitiesResponseProperties? properties;

    GeoCitiesResponse({
        this.type,
        this.properties,
    });

    factory GeoCitiesResponse.fromJson(Map<String, dynamic> json) => GeoCitiesResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : GeoCitiesResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class GeoCitiesResponseProperties {
    final ImagesClass? cities;

    GeoCitiesResponseProperties({
        this.cities,
    });

    factory GeoCitiesResponseProperties.fromJson(Map<String, dynamic> json) => GeoCitiesResponseProperties(
        cities: json["cities"] == null ? null : ImagesClass.fromJson(json["cities"]),
    );

    Map<String, dynamic> toJson() => {
        "cities": cities?.toJson(),
    };
}

class GeoCountriesResponse {
    final AccountResponseAccountMeType? type;
    final GeoCountriesResponseProperties? properties;

    GeoCountriesResponse({
        this.type,
        this.properties,
    });

    factory GeoCountriesResponse.fromJson(Map<String, dynamic> json) => GeoCountriesResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : GeoCountriesResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class GeoCountriesResponseProperties {
    final ImagesClass? countries;

    GeoCountriesResponseProperties({
        this.countries,
    });

    factory GeoCountriesResponseProperties.fromJson(Map<String, dynamic> json) => GeoCountriesResponseProperties(
        countries: json["countries"] == null ? null : ImagesClass.fromJson(json["countries"]),
    );

    Map<String, dynamic> toJson() => {
        "countries": countries?.toJson(),
    };
}

class GrowthChangeNotesDto {
    final AccountResponseAccountMeType? type;
    final GrowthChangeNotesCircleDtoProperties? properties;

    GrowthChangeNotesDto({
        this.type,
        this.properties,
    });

    factory GrowthChangeNotesDto.fromJson(Map<String, dynamic> json) => GrowthChangeNotesDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : GrowthChangeNotesCircleDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class GrowthChangeNotesCircleDtoProperties {
    final Property? id;
    final Property? notes;

    GrowthChangeNotesCircleDtoProperties({
        this.id,
        this.notes,
    });

    factory GrowthChangeNotesCircleDtoProperties.fromJson(Map<String, dynamic> json) => GrowthChangeNotesCircleDtoProperties(
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id?.toJson(),
        "notes": notes?.toJson(),
    };
}

class GrowthChangeStatsDto {
    final AccountResponseAccountMeType? type;
    final GrowthChangeStatsCircleDtoProperties? properties;

    GrowthChangeStatsDto({
        this.type,
        this.properties,
    });

    factory GrowthChangeStatsDto.fromJson(Map<String, dynamic> json) => GrowthChangeStatsDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : GrowthChangeStatsCircleDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class GrowthChangeStatsCircleDtoProperties {
    final AccountElement? stats;

    GrowthChangeStatsCircleDtoProperties({
        this.stats,
    });

    factory GrowthChangeStatsCircleDtoProperties.fromJson(Map<String, dynamic> json) => GrowthChangeStatsCircleDtoProperties(
        stats: json["stats"] == null ? null : AccountElement.fromJson(json["stats"]),
    );

    Map<String, dynamic> toJson() => {
        "stats": stats?.toJson(),
    };
}

class GrowthDtoGetCircleById {
    final AccountResponseAccountMeType? type;
    final GrowthDtoGetCircleByIdProperties? properties;

    GrowthDtoGetCircleById({
        this.type,
        this.properties,
    });

    factory GrowthDtoGetCircleById.fromJson(Map<String, dynamic> json) => GrowthDtoGetCircleById(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : GrowthDtoGetCircleByIdProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class GrowthDtoGetCircleByIdProperties {
    final Property? childId;
    final Property? circleId;

    GrowthDtoGetCircleByIdProperties({
        this.childId,
        this.circleId,
    });

    factory GrowthDtoGetCircleByIdProperties.fromJson(Map<String, dynamic> json) => GrowthDtoGetCircleByIdProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        circleId: json["circle_id"] == null ? null : Property.fromJson(json["circle_id"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
        "circle_id": circleId?.toJson(),
    };
}

class GrowthDtoGetHeightById {
    final AccountResponseAccountMeType? type;
    final GrowthDtoGetHeightByIdProperties? properties;

    GrowthDtoGetHeightById({
        this.type,
        this.properties,
    });

    factory GrowthDtoGetHeightById.fromJson(Map<String, dynamic> json) => GrowthDtoGetHeightById(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : GrowthDtoGetHeightByIdProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class GrowthDtoGetHeightByIdProperties {
    final Property? childId;
    final Property? heightId;

    GrowthDtoGetHeightByIdProperties({
        this.childId,
        this.heightId,
    });

    factory GrowthDtoGetHeightByIdProperties.fromJson(Map<String, dynamic> json) => GrowthDtoGetHeightByIdProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        heightId: json["height_id"] == null ? null : Property.fromJson(json["height_id"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
        "height_id": heightId?.toJson(),
    };
}

class GrowthDtoGetWeightById {
    final AccountResponseAccountMeType? type;
    final GrowthDtoGetWeightByIdProperties? properties;

    GrowthDtoGetWeightById({
        this.type,
        this.properties,
    });

    factory GrowthDtoGetWeightById.fromJson(Map<String, dynamic> json) => GrowthDtoGetWeightById(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : GrowthDtoGetWeightByIdProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class GrowthDtoGetWeightByIdProperties {
    final Property? childId;
    final Property? weightId;

    GrowthDtoGetWeightByIdProperties({
        this.childId,
        this.weightId,
    });

    factory GrowthDtoGetWeightByIdProperties.fromJson(Map<String, dynamic> json) => GrowthDtoGetWeightByIdProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        weightId: json["weight_id"] == null ? null : Property.fromJson(json["weight_id"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
        "weight_id": weightId?.toJson(),
    };
}

class GrowthGetCircleResponse {
    final AccountResponseAccountMeType? type;
    final GrowthGetCircleResponseProperties? properties;

    GrowthGetCircleResponse({
        this.type,
        this.properties,
    });

    factory GrowthGetCircleResponse.fromJson(Map<String, dynamic> json) => GrowthGetCircleResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : GrowthGetCircleResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class GrowthGetCircleResponseProperties {
    final AccountElement? list;

    GrowthGetCircleResponseProperties({
        this.list,
    });

    factory GrowthGetCircleResponseProperties.fromJson(Map<String, dynamic> json) => GrowthGetCircleResponseProperties(
        list: json["list"] == null ? null : AccountElement.fromJson(json["list"]),
    );

    Map<String, dynamic> toJson() => {
        "list": list?.toJson(),
    };
}

class HealthCompletedDrug {
    final AccountResponseAccountMeType? type;
    final HealthCompletedDrugProperties? properties;

    HealthCompletedDrug({
        this.type,
        this.properties,
    });

    factory HealthCompletedDrug.fromJson(Map<String, dynamic> json) => HealthCompletedDrug(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : HealthCompletedDrugProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class HealthCompletedDrugProperties {
    final Property? drugId;

    HealthCompletedDrugProperties({
        this.drugId,
    });

    factory HealthCompletedDrugProperties.fromJson(Map<String, dynamic> json) => HealthCompletedDrugProperties(
        drugId: json["drug_id"] == null ? null : Property.fromJson(json["drug_id"]),
    );

    Map<String, dynamic> toJson() => {
        "drug_id": drugId?.toJson(),
    };
}

class HealthInsertTemperatureDto {
    final AccountResponseAccountMeType? type;
    final HealthInsertTemperatureDtoProperties? properties;

    HealthInsertTemperatureDto({
        this.type,
        this.properties,
    });

    factory HealthInsertTemperatureDto.fromJson(Map<String, dynamic> json) => HealthInsertTemperatureDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : HealthInsertTemperatureDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class HealthInsertTemperatureDtoProperties {
    final Property? childId;
    final Property? isBad;
    final Property? notes;
    final Phone? temperature;
    final Phone? time;

    HealthInsertTemperatureDtoProperties({
        this.childId,
        this.isBad,
        this.notes,
        this.temperature,
        this.time,
    });

    factory HealthInsertTemperatureDtoProperties.fromJson(Map<String, dynamic> json) => HealthInsertTemperatureDtoProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        isBad: json["is_bad"] == null ? null : Property.fromJson(json["is_bad"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        temperature: json["temperature"] == null ? null : Phone.fromJson(json["temperature"]),
        time: json["time"] == null ? null : Phone.fromJson(json["time"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
        "is_bad": isBad?.toJson(),
        "notes": notes?.toJson(),
        "temperature": temperature?.toJson(),
        "time": time?.toJson(),
    };
}

class ModeratorCreateDto {
    final AccountResponseAccountMeType? type;
    final ModeratorCreateDtoProperties? properties;

    ModeratorCreateDto({
        this.type,
        this.properties,
    });

    factory ModeratorCreateDto.fromJson(Map<String, dynamic> json) => ModeratorCreateDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ModeratorCreateDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ModeratorCreateDtoProperties {
    final Property? email;
    final Property? firstName;
    final Property? lastName;
    final Property? name;
    final Property? phone;
    final Property? secondName;
    final Property? specialization;
    final AccountElement? state;

    ModeratorCreateDtoProperties({
        this.email,
        this.firstName,
        this.lastName,
        this.name,
        this.phone,
        this.secondName,
        this.specialization,
        this.state,
    });

    factory ModeratorCreateDtoProperties.fromJson(Map<String, dynamic> json) => ModeratorCreateDtoProperties(
        email: json["email"] == null ? null : Property.fromJson(json["email"]),
        firstName: json["first_name"] == null ? null : Property.fromJson(json["first_name"]),
        lastName: json["last_name"] == null ? null : Property.fromJson(json["last_name"]),
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
        phone: json["phone"] == null ? null : Property.fromJson(json["phone"]),
        secondName: json["second_name"] == null ? null : Property.fromJson(json["second_name"]),
        specialization: json["specialization"] == null ? null : Property.fromJson(json["specialization"]),
        state: json["state"] == null ? null : AccountElement.fromJson(json["state"]),
    );

    Map<String, dynamic> toJson() => {
        "email": email?.toJson(),
        "first_name": firstName?.toJson(),
        "last_name": lastName?.toJson(),
        "name": name?.toJson(),
        "phone": phone?.toJson(),
        "second_name": secondName?.toJson(),
        "specialization": specialization?.toJson(),
        "state": state?.toJson(),
    };
}

class ModeratorInsertUsersToChat {
    final AccountResponseAccountMeType? type;
    final ModeratorInsertUsersToChatProperties? properties;

    ModeratorInsertUsersToChat({
        this.type,
        this.properties,
    });

    factory ModeratorInsertUsersToChat.fromJson(Map<String, dynamic> json) => ModeratorInsertUsersToChat(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ModeratorInsertUsersToChatProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ModeratorInsertUsersToChatProperties {
    final Property? idGroupChat;
    final CategoryClass? idsUsers;

    ModeratorInsertUsersToChatProperties({
        this.idGroupChat,
        this.idsUsers,
    });

    factory ModeratorInsertUsersToChatProperties.fromJson(Map<String, dynamic> json) => ModeratorInsertUsersToChatProperties(
        idGroupChat: json["id_group_chat"] == null ? null : Property.fromJson(json["id_group_chat"]),
        idsUsers: json["ids_users"] == null ? null : CategoryClass.fromJson(json["ids_users"]),
    );

    Map<String, dynamic> toJson() => {
        "id_group_chat": idGroupChat?.toJson(),
        "ids_users": idsUsers?.toJson(),
    };
}

class ModeratorMusicCategoriesDto {
    final AccountResponseAccountMeType? type;
    final ModeratorMusicCategoriesDtoProperties? properties;

    ModeratorMusicCategoriesDto({
        this.type,
        this.properties,
    });

    factory ModeratorMusicCategoriesDto.fromJson(Map<String, dynamic> json) => ModeratorMusicCategoriesDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ModeratorMusicCategoriesDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ModeratorMusicCategoriesDtoProperties {
    final Property? category;

    ModeratorMusicCategoriesDtoProperties({
        this.category,
    });

    factory ModeratorMusicCategoriesDtoProperties.fromJson(Map<String, dynamic> json) => ModeratorMusicCategoriesDtoProperties(
        category: json["category"] == null ? null : Property.fromJson(json["category"]),
    );

    Map<String, dynamic> toJson() => {
        "category": category?.toJson(),
    };
}

class ModeratorResponseListOfFeedback {
    final AccountResponseAccountMeType? type;
    final ModeratorResponseListOfFeedbackProperties? properties;

    ModeratorResponseListOfFeedback({
        this.type,
        this.properties,
    });

    factory ModeratorResponseListOfFeedback.fromJson(Map<String, dynamic> json) => ModeratorResponseListOfFeedback(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ModeratorResponseListOfFeedbackProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ModeratorResponseListOfFeedbackProperties {
    final ImagesClass? feedback;

    ModeratorResponseListOfFeedbackProperties({
        this.feedback,
    });

    factory ModeratorResponseListOfFeedbackProperties.fromJson(Map<String, dynamic> json) => ModeratorResponseListOfFeedbackProperties(
        feedback: json["feedback"] == null ? null : ImagesClass.fromJson(json["feedback"]),
    );

    Map<String, dynamic> toJson() => {
        "feedback": feedback?.toJson(),
    };
}

class ResponseOnlineSchool {
    final AccountResponseAccountMeType? type;
    final ModeratorResponseOnlineSchoolProperties? properties;

    ResponseOnlineSchool({
        this.type,
        this.properties,
    });

    factory ResponseOnlineSchool.fromJson(Map<String, dynamic> json) => ResponseOnlineSchool(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ModeratorResponseOnlineSchoolProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ModeratorResponseOnlineSchoolProperties {
    final AccountElement? onlineSchool;

    ModeratorResponseOnlineSchoolProperties({
        this.onlineSchool,
    });

    factory ModeratorResponseOnlineSchoolProperties.fromJson(Map<String, dynamic> json) => ModeratorResponseOnlineSchoolProperties(
        onlineSchool: json["online_school"] == null ? null : AccountElement.fromJson(json["online_school"]),
    );

    Map<String, dynamic> toJson() => {
        "online_school": onlineSchool?.toJson(),
    };
}

class ModeratorSendAdminNotificationDto {
    final AccountResponseAccountMeType? type;
    final ModeratorSendAdminNotificationDtoProperties? properties;

    ModeratorSendAdminNotificationDto({
        this.type,
        this.properties,
    });

    factory ModeratorSendAdminNotificationDto.fromJson(Map<String, dynamic> json) => ModeratorSendAdminNotificationDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ModeratorSendAdminNotificationDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ModeratorSendAdminNotificationDtoProperties {
    final Property? text;
    final Property? userId;

    ModeratorSendAdminNotificationDtoProperties({
        this.text,
        this.userId,
    });

    factory ModeratorSendAdminNotificationDtoProperties.fromJson(Map<String, dynamic> json) => ModeratorSendAdminNotificationDtoProperties(
        text: json["text"] == null ? null : Property.fromJson(json["text"]),
        userId: json["user_id"] == null ? null : Property.fromJson(json["user_id"]),
    );

    Map<String, dynamic> toJson() => {
        "text": text?.toJson(),
        "user_id": userId?.toJson(),
    };
}

class ModeratorStatReq {
    final AccountResponseAccountMeType? type;
    final ModeratorStatReqProperties? properties;

    ModeratorStatReq({
        this.type,
        this.properties,
    });

    factory ModeratorStatReq.fromJson(Map<String, dynamic> json) => ModeratorStatReq(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ModeratorStatReqProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ModeratorStatReqProperties {
    final Phone? fromTime;
    final Phone? toTime;

    ModeratorStatReqProperties({
        this.fromTime,
        this.toTime,
    });

    factory ModeratorStatReqProperties.fromJson(Map<String, dynamic> json) => ModeratorStatReqProperties(
        fromTime: json["from_time"] == null ? null : Phone.fromJson(json["from_time"]),
        toTime: json["to_time"] == null ? null : Phone.fromJson(json["to_time"]),
    );

    Map<String, dynamic> toJson() => {
        "from_time": fromTime?.toJson(),
        "to_time": toTime?.toJson(),
    };
}

class ModeratorUpdateFeedbackTypeDto {
    final AccountResponseAccountMeType? type;
    final ModeratorUpdateFeedbackTypeDtoProperties? properties;

    ModeratorUpdateFeedbackTypeDto({
        this.type,
        this.properties,
    });

    factory ModeratorUpdateFeedbackTypeDto.fromJson(Map<String, dynamic> json) => ModeratorUpdateFeedbackTypeDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ModeratorUpdateFeedbackTypeDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ModeratorUpdateFeedbackTypeDtoProperties {
    final Property? id;
    final Property? type;

    ModeratorUpdateFeedbackTypeDtoProperties({
        this.id,
        this.type,
    });

    factory ModeratorUpdateFeedbackTypeDtoProperties.fromJson(Map<String, dynamic> json) => ModeratorUpdateFeedbackTypeDtoProperties(
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        type: json["type"] == null ? null : Property.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id?.toJson(),
        "type": type?.toJson(),
    };
}

class ModeratorUpdateGroupChatName {
    final AccountResponseAccountMeType? type;
    final ModeratorUpdateGroupChatNameProperties? properties;

    ModeratorUpdateGroupChatName({
        this.type,
        this.properties,
    });

    factory ModeratorUpdateGroupChatName.fromJson(Map<String, dynamic> json) => ModeratorUpdateGroupChatName(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ModeratorUpdateGroupChatNameProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ModeratorUpdateGroupChatNameProperties {
    final Property? chatId;
    final Property? newName;

    ModeratorUpdateGroupChatNameProperties({
        this.chatId,
        this.newName,
    });

    factory ModeratorUpdateGroupChatNameProperties.fromJson(Map<String, dynamic> json) => ModeratorUpdateGroupChatNameProperties(
        chatId: json["chat_id"] == null ? null : Property.fromJson(json["chat_id"]),
        newName: json["new_name"] == null ? null : Property.fromJson(json["new_name"]),
    );

    Map<String, dynamic> toJson() => {
        "chat_id": chatId?.toJson(),
        "new_name": newName?.toJson(),
    };
}

class ModeratorUpdatePromoCodeDto {
    final AccountResponseAccountMeType? type;
    final ModeratorUpdatePromoCodeDtoProperties? properties;

    ModeratorUpdatePromoCodeDto({
        this.type,
        this.properties,
    });

    factory ModeratorUpdatePromoCodeDto.fromJson(Map<String, dynamic> json) => ModeratorUpdatePromoCodeDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : ModeratorUpdatePromoCodeDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class ModeratorUpdatePromoCodeDtoProperties {
    final Property? id;
    final Property? status;
    final Property? type;

    ModeratorUpdatePromoCodeDtoProperties({
        this.id,
        this.status,
        this.type,
    });

    factory ModeratorUpdatePromoCodeDtoProperties.fromJson(Map<String, dynamic> json) => ModeratorUpdatePromoCodeDtoProperties(
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
        status: json["status"] == null ? null : Property.fromJson(json["status"]),
        type: json["type"] == null ? null : Property.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id?.toJson(),
        "status": status?.toJson(),
        "type": type?.toJson(),
    };
}

class MusicUpdateDto {
    final AccountResponseAccountMeType? type;
    final MusicUpdateDtoProperties? properties;

    MusicUpdateDto({
        this.type,
        this.properties,
    });

    factory MusicUpdateDto.fromJson(Map<String, dynamic> json) => MusicUpdateDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : MusicUpdateDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class MusicUpdateDtoProperties {
    final Property? musicId;
    final Property? status;

    MusicUpdateDtoProperties({
        this.musicId,
        this.status,
    });

    factory MusicUpdateDtoProperties.fromJson(Map<String, dynamic> json) => MusicUpdateDtoProperties(
        musicId: json["music_id"] == null ? null : Property.fromJson(json["music_id"]),
        status: json["status"] == null ? null : Property.fromJson(json["status"]),
    );

    Map<String, dynamic> toJson() => {
        "music_id": musicId?.toJson(),
        "status": status?.toJson(),
    };
}

class NotificationNotificationsResponse {
    final AccountResponseAccountMeType? type;
    final NotificationNotificationsResponseProperties? properties;

    NotificationNotificationsResponse({
        this.type,
        this.properties,
    });

    factory NotificationNotificationsResponse.fromJson(Map<String, dynamic> json) => NotificationNotificationsResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : NotificationNotificationsResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class NotificationNotificationsResponseProperties {
    final ImagesClass? notifications;

    NotificationNotificationsResponseProperties({
        this.notifications,
    });

    factory NotificationNotificationsResponseProperties.fromJson(Map<String, dynamic> json) => NotificationNotificationsResponseProperties(
        notifications: json["notifications"] == null ? null : ImagesClass.fromJson(json["notifications"]),
    );

    Map<String, dynamic> toJson() => {
        "notifications": notifications?.toJson(),
    };
}

class OnlineSchoolReqAddOnlineSchoolClass {
    final AccountResponseAccountMeType? type;
    final OnlineSchoolReqAddOnlineSchoolProperties? properties;

    OnlineSchoolReqAddOnlineSchoolClass({
        this.type,
        this.properties,
    });

    factory OnlineSchoolReqAddOnlineSchoolClass.fromJson(Map<String, dynamic> json) => OnlineSchoolReqAddOnlineSchoolClass(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : OnlineSchoolReqAddOnlineSchoolProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class OnlineSchoolReqAddOnlineSchoolProperties {
    final Property? link;
    final Property? onlineSchoolId;
    final Property? shortDescription;
    final Property? title;
    final Property? id;

    OnlineSchoolReqAddOnlineSchoolProperties({
        this.link,
        this.onlineSchoolId,
        this.shortDescription,
        this.title,
        this.id,
    });

    factory OnlineSchoolReqAddOnlineSchoolProperties.fromJson(Map<String, dynamic> json) => OnlineSchoolReqAddOnlineSchoolProperties(
        link: json["link"] == null ? null : Property.fromJson(json["link"]),
        onlineSchoolId: json["online_school_id"] == null ? null : Property.fromJson(json["online_school_id"]),
        shortDescription: json["short_description"] == null ? null : Property.fromJson(json["short_description"]),
        title: json["title"] == null ? null : Property.fromJson(json["title"]),
        id: json["id"] == null ? null : Property.fromJson(json["id"]),
    );

    Map<String, dynamic> toJson() => {
        "link": link?.toJson(),
        "online_school_id": onlineSchoolId?.toJson(),
        "short_description": shortDescription?.toJson(),
        "title": title?.toJson(),
        "id": id?.toJson(),
    };
}

class OnlineSchoolUpdateDto {
    final AccountResponseAccountMeType? type;
    final OnlineSchoolUpdateDtoProperties? properties;

    OnlineSchoolUpdateDto({
        this.type,
        this.properties,
    });

    factory OnlineSchoolUpdateDto.fromJson(Map<String, dynamic> json) => OnlineSchoolUpdateDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : OnlineSchoolUpdateDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class OnlineSchoolUpdateDtoProperties {
    final Property? email;
    final Property? info;
    final Property? name;

    OnlineSchoolUpdateDtoProperties({
        this.email,
        this.info,
        this.name,
    });

    factory OnlineSchoolUpdateDtoProperties.fromJson(Map<String, dynamic> json) => OnlineSchoolUpdateDtoProperties(
        email: json["email"] == null ? null : Property.fromJson(json["email"]),
        info: json["info"] == null ? null : Property.fromJson(json["info"]),
        name: json["name"] == null ? null : Property.fromJson(json["name"]),
    );

    Map<String, dynamic> toJson() => {
        "email": email?.toJson(),
        "info": info?.toJson(),
        "name": name?.toJson(),
    };
}

class OnlineSchoolUpdateNumberDto {
    final AccountResponseAccountMeType? type;
    final OnlineSchoolUpdateNumberDtoProperties? properties;

    OnlineSchoolUpdateNumberDto({
        this.type,
        this.properties,
    });

    factory OnlineSchoolUpdateNumberDto.fromJson(Map<String, dynamic> json) => OnlineSchoolUpdateNumberDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : OnlineSchoolUpdateNumberDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class OnlineSchoolUpdateNumberDtoProperties {
    final Property? numberNew;
    final Property? numberOld;
    final Property? onlineSchoolId;

    OnlineSchoolUpdateNumberDtoProperties({
        this.numberNew,
        this.numberOld,
        this.onlineSchoolId,
    });

    factory OnlineSchoolUpdateNumberDtoProperties.fromJson(Map<String, dynamic> json) => OnlineSchoolUpdateNumberDtoProperties(
        numberNew: json["number_new"] == null ? null : Property.fromJson(json["number_new"]),
        numberOld: json["number_old"] == null ? null : Property.fromJson(json["number_old"]),
        onlineSchoolId: json["online_school_id"] == null ? null : Property.fromJson(json["online_school_id"]),
    );

    Map<String, dynamic> toJson() => {
        "number_new": numberNew?.toJson(),
        "number_old": numberOld?.toJson(),
        "online_school_id": onlineSchoolId?.toJson(),
    };
}

class PaymentGetStatusPaymentReq {
    final AccountResponseAccountMeType? type;
    final PaymentGetStatusPaymentReqProperties? properties;

    PaymentGetStatusPaymentReq({
        this.type,
        this.properties,
    });

    factory PaymentGetStatusPaymentReq.fromJson(Map<String, dynamic> json) => PaymentGetStatusPaymentReq(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : PaymentGetStatusPaymentReqProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class PaymentGetStatusPaymentReqProperties {
    final Property? idPayment;
    final Phone? period;

    PaymentGetStatusPaymentReqProperties({
        this.idPayment,
        this.period,
    });

    factory PaymentGetStatusPaymentReqProperties.fromJson(Map<String, dynamic> json) => PaymentGetStatusPaymentReqProperties(
        idPayment: json["id_payment"] == null ? null : Property.fromJson(json["id_payment"]),
        period: json["period"] == null ? null : Phone.fromJson(json["period"]),
    );

    Map<String, dynamic> toJson() => {
        "id_payment": idPayment?.toJson(),
        "period": period?.toJson(),
    };
}

class PaymentGetStatusPaymentResp {
    final AccountResponseAccountMeType? type;
    final PaymentGetStatusPaymentRespProperties? properties;

    PaymentGetStatusPaymentResp({
        this.type,
        this.properties,
    });

    factory PaymentGetStatusPaymentResp.fromJson(Map<String, dynamic> json) => PaymentGetStatusPaymentResp(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : PaymentGetStatusPaymentRespProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class PaymentGetStatusPaymentRespProperties {
    final Property? status;

    PaymentGetStatusPaymentRespProperties({
        this.status,
    });

    factory PaymentGetStatusPaymentRespProperties.fromJson(Map<String, dynamic> json) => PaymentGetStatusPaymentRespProperties(
        status: json["status"] == null ? null : Property.fromJson(json["status"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status?.toJson(),
    };
}

class PdfPdfDto {
    final AccountResponseAccountMeType? type;
    final PdfPdfDtoProperties? properties;

    PdfPdfDto({
        this.type,
        this.properties,
    });

    factory PdfPdfDto.fromJson(Map<String, dynamic> json) => PdfPdfDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : PdfPdfDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class PdfPdfDtoProperties {
    final Property? childId;
    final Phone? typeOfPdf;

    PdfPdfDtoProperties({
        this.childId,
        this.typeOfPdf,
    });

    factory PdfPdfDtoProperties.fromJson(Map<String, dynamic> json) => PdfPdfDtoProperties(
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        typeOfPdf: json["type_of_pdf"] == null ? null : Phone.fromJson(json["type_of_pdf"]),
    );

    Map<String, dynamic> toJson() => {
        "child_id": childId?.toJson(),
        "type_of_pdf": typeOfPdf?.toJson(),
    };
}

class SleepcryInsertDto {
    final AccountResponseAccountMeType? type;
    final SleepcryInsertCryDtoProperties? properties;

    SleepcryInsertDto({
        this.type,
        this.properties,
    });

    factory SleepcryInsertDto.fromJson(Map<String, dynamic> json) => SleepcryInsertDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : SleepcryInsertCryDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class SleepcryInsertCryDtoProperties {
    final Phone? allCry;
    final Property? childId;
    final Property? notes;
    final Phone? timeEnd;
    final Phone? timeToEnd;
    final Phone? timeToStart;
    final Phone? allSleep;

    SleepcryInsertCryDtoProperties({
        this.allCry,
        this.childId,
        this.notes,
        this.timeEnd,
        this.timeToEnd,
        this.timeToStart,
        this.allSleep,
    });

    factory SleepcryInsertCryDtoProperties.fromJson(Map<String, dynamic> json) => SleepcryInsertCryDtoProperties(
        allCry: json["all_cry"] == null ? null : Phone.fromJson(json["all_cry"]),
        childId: json["child_id"] == null ? null : Property.fromJson(json["child_id"]),
        notes: json["notes"] == null ? null : Property.fromJson(json["notes"]),
        timeEnd: json["time_end"] == null ? null : Phone.fromJson(json["time_end"]),
        timeToEnd: json["time_to_end"] == null ? null : Phone.fromJson(json["time_to_end"]),
        timeToStart: json["time_to_start"] == null ? null : Phone.fromJson(json["time_to_start"]),
        allSleep: json["all_sleep"] == null ? null : Phone.fromJson(json["all_sleep"]),
    );

    Map<String, dynamic> toJson() => {
        "all_cry": allCry?.toJson(),
        "child_id": childId?.toJson(),
        "notes": notes?.toJson(),
        "time_end": timeEnd?.toJson(),
        "time_to_end": timeToEnd?.toJson(),
        "time_to_start": timeToStart?.toJson(),
        "all_sleep": allSleep?.toJson(),
    };
}

class TagsResponseTags {
    final AccountResponseAccountMeType? type;
    final TagsResponseTagsProperties? properties;

    TagsResponseTags({
        this.type,
        this.properties,
    });

    factory TagsResponseTags.fromJson(Map<String, dynamic> json) => TagsResponseTags(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : TagsResponseTagsProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class TagsResponseTagsProperties {
    final ImagesClass? tags;

    TagsResponseTagsProperties({
        this.tags,
    });

    factory TagsResponseTagsProperties.fromJson(Map<String, dynamic> json) => TagsResponseTagsProperties(
        tags: json["tags"] == null ? null : ImagesClass.fromJson(json["tags"]),
    );

    Map<String, dynamic> toJson() => {
        "tags": tags?.toJson(),
    };
}

class TagsSetDto {
    final AccountResponseAccountMeType? type;
    final TagsSetDtoProperties? properties;

    TagsSetDto({
        this.type,
        this.properties,
    });

    factory TagsSetDto.fromJson(Map<String, dynamic> json) => TagsSetDto(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : TagsSetDtoProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class TagsSetDtoProperties {
    final Property? articleId;
    final Property? tagId;

    TagsSetDtoProperties({
        this.articleId,
        this.tagId,
    });

    factory TagsSetDtoProperties.fromJson(Map<String, dynamic> json) => TagsSetDtoProperties(
        articleId: json["article_id"] == null ? null : Property.fromJson(json["article_id"]),
        tagId: json["tag_id"] == null ? null : Property.fromJson(json["tag_id"]),
    );

    Map<String, dynamic> toJson() => {
        "article_id": articleId?.toJson(),
        "tag_id": tagId?.toJson(),
    };
}

class UserListResponse {
    final AccountResponseAccountMeType? type;
    final UserListResponseProperties? properties;

    UserListResponse({
        this.type,
        this.properties,
    });

    factory UserListResponse.fromJson(Map<String, dynamic> json) => UserListResponse(
        type: accountResponseAccountMeTypeValues.map[json["type"]]!,
        properties: json["properties"] == null ? null : UserListResponseProperties.fromJson(json["properties"]),
    );

    Map<String, dynamic> toJson() => {
        "type": accountResponseAccountMeTypeValues.reverse[type],
        "properties": properties?.toJson(),
    };
}

class UserListResponseProperties {
    final ImagesClass? users;

    UserListResponseProperties({
        this.users,
    });

    factory UserListResponseProperties.fromJson(Map<String, dynamic> json) => UserListResponseProperties(
        users: json["users"] == null ? null : ImagesClass.fromJson(json["users"]),
    );

    Map<String, dynamic> toJson() => {
        "users": users?.toJson(),
    };
}

class Info {
    final String? description;
    final String? title;
    final String? termsOfService;
    final Contact? contact;
    final License? license;
    final String? version;

    Info({
        this.description,
        this.title,
        this.termsOfService,
        this.contact,
        this.license,
        this.version,
    });

    factory Info.fromJson(Map<String, dynamic> json) => Info(
        description: json["description"],
        title: json["title"],
        termsOfService: json["termsOfService"],
        contact: json["contact"] == null ? null : Contact.fromJson(json["contact"]),
        license: json["license"] == null ? null : License.fromJson(json["license"]),
        version: json["version"],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "title": title,
        "termsOfService": termsOfService,
        "contact": contact?.toJson(),
        "license": license?.toJson(),
        "version": version,
    };
}

class License {
    final String? name;
    final String? url;

    License({
        this.name,
        this.url,
    });

    factory License.fromJson(Map<String, dynamic> json) => License(
        name: json["name"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
    };
}

class Paths {
    final AccountClass? account;
    final Avatar? accountAvatar;
    final AccountDeleteId? accountDeleteId;
    final AccountList? accountList;
    final AccountNumber? accountNumber;
    final AccountNumber? accountRole;
    final AccountNumber? accountState;
    final AccountNumber? accountStatus;
    final AccountId? accountId;
    final Article? article;
    final ArticleClass? pathsArticle;
    final AccountList? articleAll;
    final ArticleCategoryClass? articleCategory;
    final ArticleCategoryAll? articleCategoryAll;
    final AccountList? articleCategoryWriter;
    final ArticleCategoryClass? articleCategoryAge;
    final ArticleFavorite? articleFavorite;
    final ArticleFavoriteArticleIdClass? articleFavoriteArticleId;
    final AccountList? articleFileAll;
    final ArticleCategoryAll? articleFileCategoryAll;
    final ArticleCategoryClass? articleFileForYou;
    final AccountList? articleFileOwn;
    final AccountList? articleFileId;
    final ArticleCategoryClass? articleForYou;
    final ArticlePhoto? articlePhoto;
    final ArticleFavoriteArticleIdClass? articleStatus;
    final AccountList? articleId;
    final AuthAccessToken? authAccessToken;
    final AuthLogOut? authLogOut;
    final AuthSendPhoneCode? authSendPhoneCode;
    final AuthSignIn? authSignIn;
    final AuthSignUp? authSignUp;
    final AuthUpdatePhone? authUpdatePhone;
    final ModeratorMeClass? category;
    final DiaperListClass? pathsCategory;
    final CategoryAge? categoryAge;
    final AccountList? chat;
    final AccountList? chatAll;
    final ArticleCategoryAll? chatCreate;
    final AccountList? chatGroup;
    final Chat? chatGroupsAllChatId;
    final ChatMessageFileChatId? chatMessageFileChatId;
    final ChatMessageFileFilepath? chatMessageFileFilepath;
    final Chat? chatMessageSearch;
    final AccountList? chatMessageTypeChat;
    final ChatResourcesAvatarAvatar? chatResourcesAvatarAvatar;
    final ChildClass? child;
    final Avatar? childAvatar;
    final AccountClass? childId;
    final Consultation? consultation;
    final ConsultationSet? consultationSet;
    final ConsultationUpdateId? consultationUpdateId;
    final Consultation? consultationUser;
    final ConsultationId? consultationId;
    final Diaper? diaper;
    final DiaperClass? pathsDiaper;
    final DiaperListClass? diaperList;
    final Doctor? doctor;
    final RMe? doctorMe;
    final DoctorUpdateWorkTime? doctorUpdateWorkTime;
    final DoctorWorkTime? doctorWorkTime;
    final DoctorId? doctorId;
    final DiaperListClass? feedChest;
    final FeedChestHistory? feedChestHistory;
    final DiaperListClass? feedFood;
    final DiaperListClass? feedFoodGet;
    final FeedChestHistory? feedFoodHistory;
    final FeedLure? feedLure;
    final FeedChestHistory? feedLureHistory;
    final DiaperListClass? feedPumping;
    final DiaperListClass? feedPumpingGet;
    final FeedChestHistory? feedPumpingHistory;
    final FeedChestHistory? feedTableSortType;
    final Feedback? feedback;
    final AccountList? feedbackGoChat;
    final AccountList? geoCity;
    final AccountList? geoCountry;
    final Growth? growthCircle;
    final DoctorWorkTime? growthCircleDeleteNotes;
    final DoctorWorkTime? growthCircleDeleteStats;
    final DiaperListClass? growthCircleGet;
    final FeedChestHistory? growthCircleHistory;
    final DoctorUpdateWorkTime? growthCircleNotes;
    final DoctorUpdateWorkTime? growthCircleStats;
    final Growth? growthHeight;
    final DoctorWorkTime? growthHeightDeleteNotes;
    final DoctorWorkTime? growthHeightDeleteStats;
    final DiaperListClass? growthHeightGet;
    final FeedChestHistory? growthHeightHistory;
    final DoctorUpdateWorkTime? growthHeightNotes;
    final DoctorUpdateWorkTime? growthHeightStats;
    final FeedChestHistory? growthTableSortType;
    final Growth? growthWeight;
    final DoctorWorkTime? growthWeightDeleteNotes;
    final DoctorWorkTime? growthWeightDeleteStats;
    final DiaperListClass? growthWeightGet;
    final FeedChestHistory? growthWeightHistory;
    final DoctorUpdateWorkTime? growthWeightNotes;
    final DoctorUpdateWorkTime? growthWeightStats;
    final Health? healthConsDoctor;
    final DiaperClass? pathsHealthConsDoctor;
    final FeedChestHistory? healthConsDoctorList;
    final ChatResourcesAvatarAvatar? healthConsDoctorAvatar;
    final HealthDocVaccination? healthDocVaccination;
    final Health? healthDrug;
    final DiaperClass? pathsHealthDrug;
    final HealthDrugCompleted? healthDrugCompleted;
    final FeedChestHistory? healthDrugList;
    final ChatResourcesAvatarAvatar? healthDrugAvatar;
    final ChatResourcesAvatarAvatar? healthIdeal;
    final ChatResourcesAvatarAvatar? healthNormal;
    final DiaperListClass? healthTemperature;
    final FeedChestHistory? healthTemperatureHistory;
    final Health? healthVaccination;
    final DiaperClass? pathsHealthVaccination;
    final FeedChestHistory? healthVaccinationList;
    final ChatResourcesAvatarAvatar? healthVaccinationAvatar;
    final AccountNumber? moderatorCreateChat;
    final ModeratorCreate? moderatorCreateChatAdd;
    final HealthDrugCompleted? moderatorCreateChatAvatar;
    final ModeratorCreate? moderatorCreateChatCreate;
    final ConsultationSet? moderatorCreateDoctor;
    final ModeratorCreateFeedback? moderatorCreateFeedback;
    final ArticleCategoryAll? moderatorCreateFeedbackGoChat;
    final AccountClass? moderatorCreateFeedbackList;
    final AccountNumber? moderatorCreateFeedbackType;
    final ConsultationSet? moderatorCreateModerator;
    final ModeratorCreate? moderatorCreateMusicAddCategory;
    final ModeratorCreate? moderatorCreateMusicAddComposition;
    final AccountDeleteId? moderatorCreateMusicDelete;
    final ModeratorCreateNotification? moderatorCreateNotification;
    final ConsultationSet? moderatorCreateOnlineSchool;
    final ModeratorCreatePromocode? moderatorCreatePromocode;
    final AccountList? moderatorCreatePromocodeList;
    final ArticleCategoryAll? moderatorCreateStat;
    final AuthSendPhoneCode? moderatorCreateStatExcel;
    final ModeratorMeClass? moderatorMe;
    final DoctorUpdateWorkTime? music;
    final Music? musicDescriptionsMusic;
    final Music? musicId;
    final Notification? notification;
    final DoctorWorkTime? notificationDeleteAll;
    final DoctorWorkTime? notificationDelete;
    final NotificationRead? notificationReadAll;
    final NotificationRead? notificationRead;
    final OnlineSchool? onlineSchool;
    final OnlineSchoolAll? onlineSchoolAll;
    final OnlineSchoolCourseClass? onlineSchoolCourse;
    final OnlineSchoolAll? onlineSchoolCourseAll;
    final OnlineSchoolCourseClass? onlineSchoolNumber;
    final OnlineSchoolAll? onlineSchoolNumberAll;
    final AuthSendPhoneCode? paymentPromocode;
    final ArticleCategoryAll? paymentStatus;
    final PdfGenerate? pdfDiapersGenerate;
    final PdfGenerate? pdfDocConsGenerate;
    final PdfGenerate? pdfDrugGenerate;
    final PdfGenerate? pdfFeedGenerate;
    final PdfGenerate? pdfGrowthGenerate;
    final PdfGenerate? pdfSleepCryGenerate;
    final PdfGenerate? pdfTemperatureGenerate;
    final PdfGenerate? pdfVaccinesGenerate;
    final ChatResourcesAvatarAvatar? resourcesArticlePhotoId;
    final ChatResourcesAvatarAvatar? resourcesAvatarAvatar;
    final DiaperListClass? sleepCryCry;
    final DiaperListClass? sleepCryCryGet;
    final FeedChestHistory? sleepCryCryHistory;
    final DiaperListClass? sleepCryPeriodTable;
    final DiaperListClass? sleepCrySleep;
    final DiaperListClass? sleepCrySleepGet;
    final FeedChestHistory? sleepCrySleepHistory;
    final FeedChestHistory? sleepCryTableSortType;
    final Tags? tags;
    final AccountClass? tagsArticleId;
    final AccountDeleteId? tagsId;
    final AccountClass? tagsName;
    final UserClass? user;
    final AccountClass? userMe;
    final RMe? watcherMe;
    final WatcherTypeOfWatch? watcherTypeOfWatch;

    Paths({
        this.account,
        this.accountAvatar,
        this.accountDeleteId,
        this.accountList,
        this.accountNumber,
        this.accountRole,
        this.accountState,
        this.accountStatus,
        this.accountId,
        this.article,
        this.pathsArticle,
        this.articleAll,
        this.articleCategory,
        this.articleCategoryAll,
        this.articleCategoryWriter,
        this.articleCategoryAge,
        this.articleFavorite,
        this.articleFavoriteArticleId,
        this.articleFileAll,
        this.articleFileCategoryAll,
        this.articleFileForYou,
        this.articleFileOwn,
        this.articleFileId,
        this.articleForYou,
        this.articlePhoto,
        this.articleStatus,
        this.articleId,
        this.authAccessToken,
        this.authLogOut,
        this.authSendPhoneCode,
        this.authSignIn,
        this.authSignUp,
        this.authUpdatePhone,
        this.category,
        this.pathsCategory,
        this.categoryAge,
        this.chat,
        this.chatAll,
        this.chatCreate,
        this.chatGroup,
        this.chatGroupsAllChatId,
        this.chatMessageFileChatId,
        this.chatMessageFileFilepath,
        this.chatMessageSearch,
        this.chatMessageTypeChat,
        this.chatResourcesAvatarAvatar,
        this.child,
        this.childAvatar,
        this.childId,
        this.consultation,
        this.consultationSet,
        this.consultationUpdateId,
        this.consultationUser,
        this.consultationId,
        this.diaper,
        this.pathsDiaper,
        this.diaperList,
        this.doctor,
        this.doctorMe,
        this.doctorUpdateWorkTime,
        this.doctorWorkTime,
        this.doctorId,
        this.feedChest,
        this.feedChestHistory,
        this.feedFood,
        this.feedFoodGet,
        this.feedFoodHistory,
        this.feedLure,
        this.feedLureHistory,
        this.feedPumping,
        this.feedPumpingGet,
        this.feedPumpingHistory,
        this.feedTableSortType,
        this.feedback,
        this.feedbackGoChat,
        this.geoCity,
        this.geoCountry,
        this.growthCircle,
        this.growthCircleDeleteNotes,
        this.growthCircleDeleteStats,
        this.growthCircleGet,
        this.growthCircleHistory,
        this.growthCircleNotes,
        this.growthCircleStats,
        this.growthHeight,
        this.growthHeightDeleteNotes,
        this.growthHeightDeleteStats,
        this.growthHeightGet,
        this.growthHeightHistory,
        this.growthHeightNotes,
        this.growthHeightStats,
        this.growthTableSortType,
        this.growthWeight,
        this.growthWeightDeleteNotes,
        this.growthWeightDeleteStats,
        this.growthWeightGet,
        this.growthWeightHistory,
        this.growthWeightNotes,
        this.growthWeightStats,
        this.healthConsDoctor,
        this.pathsHealthConsDoctor,
        this.healthConsDoctorList,
        this.healthConsDoctorAvatar,
        this.healthDocVaccination,
        this.healthDrug,
        this.pathsHealthDrug,
        this.healthDrugCompleted,
        this.healthDrugList,
        this.healthDrugAvatar,
        this.healthIdeal,
        this.healthNormal,
        this.healthTemperature,
        this.healthTemperatureHistory,
        this.healthVaccination,
        this.pathsHealthVaccination,
        this.healthVaccinationList,
        this.healthVaccinationAvatar,
        this.moderatorCreateChat,
        this.moderatorCreateChatAdd,
        this.moderatorCreateChatAvatar,
        this.moderatorCreateChatCreate,
        this.moderatorCreateDoctor,
        this.moderatorCreateFeedback,
        this.moderatorCreateFeedbackGoChat,
        this.moderatorCreateFeedbackList,
        this.moderatorCreateFeedbackType,
        this.moderatorCreateModerator,
        this.moderatorCreateMusicAddCategory,
        this.moderatorCreateMusicAddComposition,
        this.moderatorCreateMusicDelete,
        this.moderatorCreateNotification,
        this.moderatorCreateOnlineSchool,
        this.moderatorCreatePromocode,
        this.moderatorCreatePromocodeList,
        this.moderatorCreateStat,
        this.moderatorCreateStatExcel,
        this.moderatorMe,
        this.music,
        this.musicDescriptionsMusic,
        this.musicId,
        this.notification,
        this.notificationDeleteAll,
        this.notificationDelete,
        this.notificationReadAll,
        this.notificationRead,
        this.onlineSchool,
        this.onlineSchoolAll,
        this.onlineSchoolCourse,
        this.onlineSchoolCourseAll,
        this.onlineSchoolNumber,
        this.onlineSchoolNumberAll,
        this.paymentPromocode,
        this.paymentStatus,
        this.pdfDiapersGenerate,
        this.pdfDocConsGenerate,
        this.pdfDrugGenerate,
        this.pdfFeedGenerate,
        this.pdfGrowthGenerate,
        this.pdfSleepCryGenerate,
        this.pdfTemperatureGenerate,
        this.pdfVaccinesGenerate,
        this.resourcesArticlePhotoId,
        this.resourcesAvatarAvatar,
        this.sleepCryCry,
        this.sleepCryCryGet,
        this.sleepCryCryHistory,
        this.sleepCryPeriodTable,
        this.sleepCrySleep,
        this.sleepCrySleepGet,
        this.sleepCrySleepHistory,
        this.sleepCryTableSortType,
        this.tags,
        this.tagsArticleId,
        this.tagsId,
        this.tagsName,
        this.user,
        this.userMe,
        this.watcherMe,
        this.watcherTypeOfWatch,
    });

    factory Paths.fromJson(Map<String, dynamic> json) => Paths(
        account: json["/account"] == null ? null : AccountClass.fromJson(json["/account"]),
        accountAvatar: json["/account/avatar"] == null ? null : Avatar.fromJson(json["/account/avatar"]),
        accountDeleteId: json["/account/delete/{id}"] == null ? null : AccountDeleteId.fromJson(json["/account/delete/{id}"]),
        accountList: json["/account/list"] == null ? null : AccountList.fromJson(json["/account/list"]),
        accountNumber: json["/account/number"] == null ? null : AccountNumber.fromJson(json["/account/number"]),
        accountRole: json["/account/role"] == null ? null : AccountNumber.fromJson(json["/account/role"]),
        accountState: json["/account/state"] == null ? null : AccountNumber.fromJson(json["/account/state"]),
        accountStatus: json["/account/status"] == null ? null : AccountNumber.fromJson(json["/account/status"]),
        accountId: json["/account/{id}"] == null ? null : AccountId.fromJson(json["/account/{id}"]),
        article: json["/article"] == null ? null : Article.fromJson(json["/article"]),
        pathsArticle: json["/article/"] == null ? null : ArticleClass.fromJson(json["/article/"]),
        articleAll: json["/article/all"] == null ? null : AccountList.fromJson(json["/article/all"]),
        articleCategory: json["/article/category"] == null ? null : ArticleCategoryClass.fromJson(json["/article/category"]),
        articleCategoryAll: json["/article/category/all"] == null ? null : ArticleCategoryAll.fromJson(json["/article/category/all"]),
        articleCategoryWriter: json["/article/category/writer"] == null ? null : AccountList.fromJson(json["/article/category/writer"]),
        articleCategoryAge: json["/article/category_age"] == null ? null : ArticleCategoryClass.fromJson(json["/article/category_age"]),
        articleFavorite: json["/article/favorite"] == null ? null : ArticleFavorite.fromJson(json["/article/favorite"]),
        articleFavoriteArticleId: json["/article/favorite{article_id}"] == null ? null : ArticleFavoriteArticleIdClass.fromJson(json["/article/favorite{article_id}"]),
        articleFileAll: json["/article/file/all"] == null ? null : AccountList.fromJson(json["/article/file/all"]),
        articleFileCategoryAll: json["/article/file/category/all"] == null ? null : ArticleCategoryAll.fromJson(json["/article/file/category/all"]),
        articleFileForYou: json["/article/file/for_you"] == null ? null : ArticleCategoryClass.fromJson(json["/article/file/for_you"]),
        articleFileOwn: json["/article/file/own"] == null ? null : AccountList.fromJson(json["/article/file/own"]),
        articleFileId: json["/article/file/{id}"] == null ? null : AccountList.fromJson(json["/article/file/{id}"]),
        articleForYou: json["/article/for_you"] == null ? null : ArticleCategoryClass.fromJson(json["/article/for_you"]),
        articlePhoto: json["/article/photo"] == null ? null : ArticlePhoto.fromJson(json["/article/photo"]),
        articleStatus: json["/article/status"] == null ? null : ArticleFavoriteArticleIdClass.fromJson(json["/article/status"]),
        articleId: json["/article/{id}"] == null ? null : AccountList.fromJson(json["/article/{id}"]),
        authAccessToken: json["/auth/access-token"] == null ? null : AuthAccessToken.fromJson(json["/auth/access-token"]),
        authLogOut: json["/auth/log-out"] == null ? null : AuthLogOut.fromJson(json["/auth/log-out"]),
        authSendPhoneCode: json["/auth/send-phone-code"] == null ? null : AuthSendPhoneCode.fromJson(json["/auth/send-phone-code"]),
        authSignIn: json["/auth/sign-in"] == null ? null : AuthSignIn.fromJson(json["/auth/sign-in"]),
        authSignUp: json["/auth/sign-up"] == null ? null : AuthSignUp.fromJson(json["/auth/sign-up"]),
        authUpdatePhone: json["/auth/update-phone"] == null ? null : AuthUpdatePhone.fromJson(json["/auth/update-phone"]),
        category: json["/category"] == null ? null : ModeratorMeClass.fromJson(json["/category"]),
        pathsCategory: json["/category/"] == null ? null : DiaperListClass.fromJson(json["/category/"]),
        categoryAge: json["/category/age"] == null ? null : CategoryAge.fromJson(json["/category/age"]),
        chat: json["/chat"] == null ? null : AccountList.fromJson(json["/chat"]),
        chatAll: json["/chat/all"] == null ? null : AccountList.fromJson(json["/chat/all"]),
        chatCreate: json["/chat/create"] == null ? null : ArticleCategoryAll.fromJson(json["/chat/create"]),
        chatGroup: json["/chat/group"] == null ? null : AccountList.fromJson(json["/chat/group"]),
        chatGroupsAllChatId: json["/chat/groups/all/{chat_id}"] == null ? null : Chat.fromJson(json["/chat/groups/all/{chat_id}"]),
        chatMessageFileChatId: json["/chat/message/file/{chat_id}"] == null ? null : ChatMessageFileChatId.fromJson(json["/chat/message/file/{chat_id}"]),
        chatMessageFileFilepath: json["/chat/message/file/{filepath}"] == null ? null : ChatMessageFileFilepath.fromJson(json["/chat/message/file/{filepath}"]),
        chatMessageSearch: json["/chat/message/search"] == null ? null : Chat.fromJson(json["/chat/message/search"]),
        chatMessageTypeChat: json["/chat/message/{type_chat}"] == null ? null : AccountList.fromJson(json["/chat/message/{type_chat}"]),
        chatResourcesAvatarAvatar: json["/chat/resources/avatar/{avatar}"] == null ? null : ChatResourcesAvatarAvatar.fromJson(json["/chat/resources/avatar/{avatar}"]),
        child: json["/child/"] == null ? null : ChildClass.fromJson(json["/child/"]),
        childAvatar: json["/child/avatar/"] == null ? null : Avatar.fromJson(json["/child/avatar/"]),
        childId: json["/child/{id}"] == null ? null : AccountClass.fromJson(json["/child/{id}"]),
        consultation: json["/consultation/"] == null ? null : Consultation.fromJson(json["/consultation/"]),
        consultationSet: json["/consultation/set"] == null ? null : ConsultationSet.fromJson(json["/consultation/set"]),
        consultationUpdateId: json["/consultation/update/{id}"] == null ? null : ConsultationUpdateId.fromJson(json["/consultation/update/{id}"]),
        consultationUser: json["/consultation/user"] == null ? null : Consultation.fromJson(json["/consultation/user"]),
        consultationId: json["/consultation/{id}"] == null ? null : ConsultationId.fromJson(json["/consultation/{id}"]),
        diaper: json["/diaper"] == null ? null : Diaper.fromJson(json["/diaper"]),
        pathsDiaper: json["/diaper/"] == null ? null : DiaperClass.fromJson(json["/diaper/"]),
        diaperList: json["/diaper/list"] == null ? null : DiaperListClass.fromJson(json["/diaper/list"]),
        doctor: json["/doctor/"] == null ? null : Doctor.fromJson(json["/doctor/"]),
        doctorMe: json["/doctor/me"] == null ? null : RMe.fromJson(json["/doctor/me"]),
        doctorUpdateWorkTime: json["/doctor/update_work_time"] == null ? null : DoctorUpdateWorkTime.fromJson(json["/doctor/update_work_time"]),
        doctorWorkTime: json["/doctor/work_time/"] == null ? null : DoctorWorkTime.fromJson(json["/doctor/work_time/"]),
        doctorId: json["/doctor/{id}"] == null ? null : DoctorId.fromJson(json["/doctor/{id}"]),
        feedChest: json["/feed/chest"] == null ? null : DiaperListClass.fromJson(json["/feed/chest"]),
        feedChestHistory: json["/feed/chest/history"] == null ? null : FeedChestHistory.fromJson(json["/feed/chest/history"]),
        feedFood: json["/feed/food"] == null ? null : DiaperListClass.fromJson(json["/feed/food"]),
        feedFoodGet: json["/feed/food/get"] == null ? null : DiaperListClass.fromJson(json["/feed/food/get"]),
        feedFoodHistory: json["/feed/food/history"] == null ? null : FeedChestHistory.fromJson(json["/feed/food/history"]),
        feedLure: json["/feed/lure"] == null ? null : FeedLure.fromJson(json["/feed/lure"]),
        feedLureHistory: json["/feed/lure/history"] == null ? null : FeedChestHistory.fromJson(json["/feed/lure/history"]),
        feedPumping: json["/feed/pumping"] == null ? null : DiaperListClass.fromJson(json["/feed/pumping"]),
        feedPumpingGet: json["/feed/pumping/get"] == null ? null : DiaperListClass.fromJson(json["/feed/pumping/get"]),
        feedPumpingHistory: json["/feed/pumping/history"] == null ? null : FeedChestHistory.fromJson(json["/feed/pumping/history"]),
        feedTableSortType: json["/feed/table/{sort_type}"] == null ? null : FeedChestHistory.fromJson(json["/feed/table/{sort_type}"]),
        feedback: json["/feedback/"] == null ? null : Feedback.fromJson(json["/feedback/"]),
        feedbackGoChat: json["/feedback/go_chat"] == null ? null : AccountList.fromJson(json["/feedback/go_chat"]),
        geoCity: json["/geo/city"] == null ? null : AccountList.fromJson(json["/geo/city"]),
        geoCountry: json["/geo/country"] == null ? null : AccountList.fromJson(json["/geo/country"]),
        growthCircle: json["/growth/circle"] == null ? null : Growth.fromJson(json["/growth/circle"]),
        growthCircleDeleteNotes: json["/growth/circle/delete/notes"] == null ? null : DoctorWorkTime.fromJson(json["/growth/circle/delete/notes"]),
        growthCircleDeleteStats: json["/growth/circle/delete/stats"] == null ? null : DoctorWorkTime.fromJson(json["/growth/circle/delete/stats"]),
        growthCircleGet: json["/growth/circle/get"] == null ? null : DiaperListClass.fromJson(json["/growth/circle/get"]),
        growthCircleHistory: json["/growth/circle/history"] == null ? null : FeedChestHistory.fromJson(json["/growth/circle/history"]),
        growthCircleNotes: json["/growth/circle/notes"] == null ? null : DoctorUpdateWorkTime.fromJson(json["/growth/circle/notes"]),
        growthCircleStats: json["/growth/circle/stats"] == null ? null : DoctorUpdateWorkTime.fromJson(json["/growth/circle/stats"]),
        growthHeight: json["/growth/height"] == null ? null : Growth.fromJson(json["/growth/height"]),
        growthHeightDeleteNotes: json["/growth/height/delete/notes"] == null ? null : DoctorWorkTime.fromJson(json["/growth/height/delete/notes"]),
        growthHeightDeleteStats: json["/growth/height/delete/stats"] == null ? null : DoctorWorkTime.fromJson(json["/growth/height/delete/stats"]),
        growthHeightGet: json["/growth/height/get"] == null ? null : DiaperListClass.fromJson(json["/growth/height/get"]),
        growthHeightHistory: json["/growth/height/history"] == null ? null : FeedChestHistory.fromJson(json["/growth/height/history"]),
        growthHeightNotes: json["/growth/height/notes"] == null ? null : DoctorUpdateWorkTime.fromJson(json["/growth/height/notes"]),
        growthHeightStats: json["/growth/height/stats"] == null ? null : DoctorUpdateWorkTime.fromJson(json["/growth/height/stats"]),
        growthTableSortType: json["/growth/table/{sort_type}"] == null ? null : FeedChestHistory.fromJson(json["/growth/table/{sort_type}"]),
        growthWeight: json["/growth/weight"] == null ? null : Growth.fromJson(json["/growth/weight"]),
        growthWeightDeleteNotes: json["/growth/weight/delete/notes"] == null ? null : DoctorWorkTime.fromJson(json["/growth/weight/delete/notes"]),
        growthWeightDeleteStats: json["/growth/weight/delete/stats"] == null ? null : DoctorWorkTime.fromJson(json["/growth/weight/delete/stats"]),
        growthWeightGet: json["/growth/weight/get"] == null ? null : DiaperListClass.fromJson(json["/growth/weight/get"]),
        growthWeightHistory: json["/growth/weight/history"] == null ? null : FeedChestHistory.fromJson(json["/growth/weight/history"]),
        growthWeightNotes: json["/growth/weight/notes"] == null ? null : DoctorUpdateWorkTime.fromJson(json["/growth/weight/notes"]),
        growthWeightStats: json["/growth/weight/stats"] == null ? null : DoctorUpdateWorkTime.fromJson(json["/growth/weight/stats"]),
        healthConsDoctor: json["/health/cons_doctor"] == null ? null : Health.fromJson(json["/health/cons_doctor"]),
        pathsHealthConsDoctor: json["/health/cons_doctor/"] == null ? null : DiaperClass.fromJson(json["/health/cons_doctor/"]),
        healthConsDoctorList: json["/health/cons_doctor/list"] == null ? null : FeedChestHistory.fromJson(json["/health/cons_doctor/list"]),
        healthConsDoctorAvatar: json["/health/cons_doctor/{avatar}"] == null ? null : ChatResourcesAvatarAvatar.fromJson(json["/health/cons_doctor/{avatar}"]),
        healthDocVaccination: json["/health/doc_vaccination"] == null ? null : HealthDocVaccination.fromJson(json["/health/doc_vaccination"]),
        healthDrug: json["/health/drug"] == null ? null : Health.fromJson(json["/health/drug"]),
        pathsHealthDrug: json["/health/drug/"] == null ? null : DiaperClass.fromJson(json["/health/drug/"]),
        healthDrugCompleted: json["/health/drug/completed"] == null ? null : HealthDrugCompleted.fromJson(json["/health/drug/completed"]),
        healthDrugList: json["/health/drug/list"] == null ? null : FeedChestHistory.fromJson(json["/health/drug/list"]),
        healthDrugAvatar: json["/health/drug/{avatar}"] == null ? null : ChatResourcesAvatarAvatar.fromJson(json["/health/drug/{avatar}"]),
        healthIdeal: json["/health/ideal"] == null ? null : ChatResourcesAvatarAvatar.fromJson(json["/health/ideal"]),
        healthNormal: json["/health/normal"] == null ? null : ChatResourcesAvatarAvatar.fromJson(json["/health/normal"]),
        healthTemperature: json["/health/temperature"] == null ? null : DiaperListClass.fromJson(json["/health/temperature"]),
        healthTemperatureHistory: json["/health/temperature/history"] == null ? null : FeedChestHistory.fromJson(json["/health/temperature/history"]),
        healthVaccination: json["/health/vaccination"] == null ? null : Health.fromJson(json["/health/vaccination"]),
        pathsHealthVaccination: json["/health/vaccination/"] == null ? null : DiaperClass.fromJson(json["/health/vaccination/"]),
        healthVaccinationList: json["/health/vaccination/list"] == null ? null : FeedChestHistory.fromJson(json["/health/vaccination/list"]),
        healthVaccinationAvatar: json["/health/vaccination/{avatar}"] == null ? null : ChatResourcesAvatarAvatar.fromJson(json["/health/vaccination/{avatar}"]),
        moderatorCreateChat: json["/moderator/create/chat"] == null ? null : AccountNumber.fromJson(json["/moderator/create/chat"]),
        moderatorCreateChatAdd: json["/moderator/create/chat/add"] == null ? null : ModeratorCreate.fromJson(json["/moderator/create/chat/add"]),
        moderatorCreateChatAvatar: json["/moderator/create/chat/avatar"] == null ? null : HealthDrugCompleted.fromJson(json["/moderator/create/chat/avatar"]),
        moderatorCreateChatCreate: json["/moderator/create/chat/create"] == null ? null : ModeratorCreate.fromJson(json["/moderator/create/chat/create"]),
        moderatorCreateDoctor: json["/moderator/create/doctor"] == null ? null : ConsultationSet.fromJson(json["/moderator/create/doctor"]),
        moderatorCreateFeedback: json["/moderator/create/feedback"] == null ? null : ModeratorCreateFeedback.fromJson(json["/moderator/create/feedback"]),
        moderatorCreateFeedbackGoChat: json["/moderator/create/feedback/go_chat"] == null ? null : ArticleCategoryAll.fromJson(json["/moderator/create/feedback/go_chat"]),
        moderatorCreateFeedbackList: json["/moderator/create/feedback/list"] == null ? null : AccountClass.fromJson(json["/moderator/create/feedback/list"]),
        moderatorCreateFeedbackType: json["/moderator/create/feedback/type"] == null ? null : AccountNumber.fromJson(json["/moderator/create/feedback/type"]),
        moderatorCreateModerator: json["/moderator/create/moderator"] == null ? null : ConsultationSet.fromJson(json["/moderator/create/moderator"]),
        moderatorCreateMusicAddCategory: json["/moderator/create/music/addCategory"] == null ? null : ModeratorCreate.fromJson(json["/moderator/create/music/addCategory"]),
        moderatorCreateMusicAddComposition: json["/moderator/create/music/addComposition"] == null ? null : ModeratorCreate.fromJson(json["/moderator/create/music/addComposition"]),
        moderatorCreateMusicDelete: json["/moderator/create/music/delete"] == null ? null : AccountDeleteId.fromJson(json["/moderator/create/music/delete"]),
        moderatorCreateNotification: json["/moderator/create/notification"] == null ? null : ModeratorCreateNotification.fromJson(json["/moderator/create/notification"]),
        moderatorCreateOnlineSchool: json["/moderator/create/online-school"] == null ? null : ConsultationSet.fromJson(json["/moderator/create/online-school"]),
        moderatorCreatePromocode: json["/moderator/create/promocode"] == null ? null : ModeratorCreatePromocode.fromJson(json["/moderator/create/promocode"]),
        moderatorCreatePromocodeList: json["/moderator/create/promocode/list"] == null ? null : AccountList.fromJson(json["/moderator/create/promocode/list"]),
        moderatorCreateStat: json["/moderator/create/stat"] == null ? null : ArticleCategoryAll.fromJson(json["/moderator/create/stat"]),
        moderatorCreateStatExcel: json["/moderator/create/stat/excel"] == null ? null : AuthSendPhoneCode.fromJson(json["/moderator/create/stat/excel"]),
        moderatorMe: json["/moderator/me"] == null ? null : ModeratorMeClass.fromJson(json["/moderator/me"]),
        music: json["/music/"] == null ? null : DoctorUpdateWorkTime.fromJson(json["/music/"]),
        musicDescriptionsMusic: json["/music/descriptions/{music}"] == null ? null : Music.fromJson(json["/music/descriptions/{music}"]),
        musicId: json["/music/{id}"] == null ? null : Music.fromJson(json["/music/{id}"]),
        notification: json["/notification/"] == null ? null : Notification.fromJson(json["/notification/"]),
        notificationDeleteAll: json["/notification/delete-all/"] == null ? null : DoctorWorkTime.fromJson(json["/notification/delete-all/"]),
        notificationDelete: json["/notification/delete/"] == null ? null : DoctorWorkTime.fromJson(json["/notification/delete/"]),
        notificationReadAll: json["/notification/read-all/"] == null ? null : NotificationRead.fromJson(json["/notification/read-all/"]),
        notificationRead: json["/notification/read/"] == null ? null : NotificationRead.fromJson(json["/notification/read/"]),
        onlineSchool: json["/online-school/"] == null ? null : OnlineSchool.fromJson(json["/online-school/"]),
        onlineSchoolAll: json["/online-school/all"] == null ? null : OnlineSchoolAll.fromJson(json["/online-school/all"]),
        onlineSchoolCourse: json["/online-school/course"] == null ? null : OnlineSchoolCourseClass.fromJson(json["/online-school/course"]),
        onlineSchoolCourseAll: json["/online-school/course/all"] == null ? null : OnlineSchoolAll.fromJson(json["/online-school/course/all"]),
        onlineSchoolNumber: json["/online-school/number"] == null ? null : OnlineSchoolCourseClass.fromJson(json["/online-school/number"]),
        onlineSchoolNumberAll: json["/online-school/number/all"] == null ? null : OnlineSchoolAll.fromJson(json["/online-school/number/all"]),
        paymentPromocode: json["/payment/promocode"] == null ? null : AuthSendPhoneCode.fromJson(json["/payment/promocode"]),
        paymentStatus: json["/payment/status"] == null ? null : ArticleCategoryAll.fromJson(json["/payment/status"]),
        pdfDiapersGenerate: json["/pdf/diapers/generate"] == null ? null : PdfGenerate.fromJson(json["/pdf/diapers/generate"]),
        pdfDocConsGenerate: json["/pdf/doc_cons/generate"] == null ? null : PdfGenerate.fromJson(json["/pdf/doc_cons/generate"]),
        pdfDrugGenerate: json["/pdf/drug/generate"] == null ? null : PdfGenerate.fromJson(json["/pdf/drug/generate"]),
        pdfFeedGenerate: json["/pdf/feed/generate"] == null ? null : PdfGenerate.fromJson(json["/pdf/feed/generate"]),
        pdfGrowthGenerate: json["/pdf/growth/generate"] == null ? null : PdfGenerate.fromJson(json["/pdf/growth/generate"]),
        pdfSleepCryGenerate: json["/pdf/sleep_cry/generate"] == null ? null : PdfGenerate.fromJson(json["/pdf/sleep_cry/generate"]),
        pdfTemperatureGenerate: json["/pdf/temperature/generate"] == null ? null : PdfGenerate.fromJson(json["/pdf/temperature/generate"]),
        pdfVaccinesGenerate: json["/pdf/vaccines/generate"] == null ? null : PdfGenerate.fromJson(json["/pdf/vaccines/generate"]),
        resourcesArticlePhotoId: json["/resources/article/photo/{id}"] == null ? null : ChatResourcesAvatarAvatar.fromJson(json["/resources/article/photo/{id}"]),
        resourcesAvatarAvatar: json["/resources/avatar/{avatar}"] == null ? null : ChatResourcesAvatarAvatar.fromJson(json["/resources/avatar/{avatar}"]),
        sleepCryCry: json["/sleep_cry/cry"] == null ? null : DiaperListClass.fromJson(json["/sleep_cry/cry"]),
        sleepCryCryGet: json["/sleep_cry/cry/get"] == null ? null : DiaperListClass.fromJson(json["/sleep_cry/cry/get"]),
        sleepCryCryHistory: json["/sleep_cry/cry/history"] == null ? null : FeedChestHistory.fromJson(json["/sleep_cry/cry/history"]),
        sleepCryPeriodTable: json["/sleep_cry/period_table"] == null ? null : DiaperListClass.fromJson(json["/sleep_cry/period_table"]),
        sleepCrySleep: json["/sleep_cry/sleep"] == null ? null : DiaperListClass.fromJson(json["/sleep_cry/sleep"]),
        sleepCrySleepGet: json["/sleep_cry/sleep/get"] == null ? null : DiaperListClass.fromJson(json["/sleep_cry/sleep/get"]),
        sleepCrySleepHistory: json["/sleep_cry/sleep/history"] == null ? null : FeedChestHistory.fromJson(json["/sleep_cry/sleep/history"]),
        sleepCryTableSortType: json["/sleep_cry/table/{sort_type}"] == null ? null : FeedChestHistory.fromJson(json["/sleep_cry/table/{sort_type}"]),
        tags: json["/tags/"] == null ? null : Tags.fromJson(json["/tags/"]),
        tagsArticleId: json["/tags/article/{id}"] == null ? null : AccountClass.fromJson(json["/tags/article/{id}"]),
        tagsId: json["/tags/{id}"] == null ? null : AccountDeleteId.fromJson(json["/tags/{id}"]),
        tagsName: json["/tags/{name}"] == null ? null : AccountClass.fromJson(json["/tags/{name}"]),
        user: json["/user/"] == null ? null : UserClass.fromJson(json["/user/"]),
        userMe: json["/user/me"] == null ? null : AccountClass.fromJson(json["/user/me"]),
        watcherMe: json["/watcher/me"] == null ? null : RMe.fromJson(json["/watcher/me"]),
        watcherTypeOfWatch: json["/watcher/{typeOfWatch}"] == null ? null : WatcherTypeOfWatch.fromJson(json["/watcher/{typeOfWatch}"]),
    );

    Map<String, dynamic> toJson() => {
        "/account": account?.toJson(),
        "/account/avatar": accountAvatar?.toJson(),
        "/account/delete/{id}": accountDeleteId?.toJson(),
        "/account/list": accountList?.toJson(),
        "/account/number": accountNumber?.toJson(),
        "/account/role": accountRole?.toJson(),
        "/account/state": accountState?.toJson(),
        "/account/status": accountStatus?.toJson(),
        "/account/{id}": accountId?.toJson(),
        "/article": article?.toJson(),
        "/article/": pathsArticle?.toJson(),
        "/article/all": articleAll?.toJson(),
        "/article/category": articleCategory?.toJson(),
        "/article/category/all": articleCategoryAll?.toJson(),
        "/article/category/writer": articleCategoryWriter?.toJson(),
        "/article/category_age": articleCategoryAge?.toJson(),
        "/article/favorite": articleFavorite?.toJson(),
        "/article/favorite{article_id}": articleFavoriteArticleId?.toJson(),
        "/article/file/all": articleFileAll?.toJson(),
        "/article/file/category/all": articleFileCategoryAll?.toJson(),
        "/article/file/for_you": articleFileForYou?.toJson(),
        "/article/file/own": articleFileOwn?.toJson(),
        "/article/file/{id}": articleFileId?.toJson(),
        "/article/for_you": articleForYou?.toJson(),
        "/article/photo": articlePhoto?.toJson(),
        "/article/status": articleStatus?.toJson(),
        "/article/{id}": articleId?.toJson(),
        "/auth/access-token": authAccessToken?.toJson(),
        "/auth/log-out": authLogOut?.toJson(),
        "/auth/send-phone-code": authSendPhoneCode?.toJson(),
        "/auth/sign-in": authSignIn?.toJson(),
        "/auth/sign-up": authSignUp?.toJson(),
        "/auth/update-phone": authUpdatePhone?.toJson(),
        "/category": category?.toJson(),
        "/category/": pathsCategory?.toJson(),
        "/category/age": categoryAge?.toJson(),
        "/chat": chat?.toJson(),
        "/chat/all": chatAll?.toJson(),
        "/chat/create": chatCreate?.toJson(),
        "/chat/group": chatGroup?.toJson(),
        "/chat/groups/all/{chat_id}": chatGroupsAllChatId?.toJson(),
        "/chat/message/file/{chat_id}": chatMessageFileChatId?.toJson(),
        "/chat/message/file/{filepath}": chatMessageFileFilepath?.toJson(),
        "/chat/message/search": chatMessageSearch?.toJson(),
        "/chat/message/{type_chat}": chatMessageTypeChat?.toJson(),
        "/chat/resources/avatar/{avatar}": chatResourcesAvatarAvatar?.toJson(),
        "/child/": child?.toJson(),
        "/child/avatar/": childAvatar?.toJson(),
        "/child/{id}": childId?.toJson(),
        "/consultation/": consultation?.toJson(),
        "/consultation/set": consultationSet?.toJson(),
        "/consultation/update/{id}": consultationUpdateId?.toJson(),
        "/consultation/user": consultationUser?.toJson(),
        "/consultation/{id}": consultationId?.toJson(),
        "/diaper": diaper?.toJson(),
        "/diaper/": pathsDiaper?.toJson(),
        "/diaper/list": diaperList?.toJson(),
        "/doctor/": doctor?.toJson(),
        "/doctor/me": doctorMe?.toJson(),
        "/doctor/update_work_time": doctorUpdateWorkTime?.toJson(),
        "/doctor/work_time/": doctorWorkTime?.toJson(),
        "/doctor/{id}": doctorId?.toJson(),
        "/feed/chest": feedChest?.toJson(),
        "/feed/chest/history": feedChestHistory?.toJson(),
        "/feed/food": feedFood?.toJson(),
        "/feed/food/get": feedFoodGet?.toJson(),
        "/feed/food/history": feedFoodHistory?.toJson(),
        "/feed/lure": feedLure?.toJson(),
        "/feed/lure/history": feedLureHistory?.toJson(),
        "/feed/pumping": feedPumping?.toJson(),
        "/feed/pumping/get": feedPumpingGet?.toJson(),
        "/feed/pumping/history": feedPumpingHistory?.toJson(),
        "/feed/table/{sort_type}": feedTableSortType?.toJson(),
        "/feedback/": feedback?.toJson(),
        "/feedback/go_chat": feedbackGoChat?.toJson(),
        "/geo/city": geoCity?.toJson(),
        "/geo/country": geoCountry?.toJson(),
        "/growth/circle": growthCircle?.toJson(),
        "/growth/circle/delete/notes": growthCircleDeleteNotes?.toJson(),
        "/growth/circle/delete/stats": growthCircleDeleteStats?.toJson(),
        "/growth/circle/get": growthCircleGet?.toJson(),
        "/growth/circle/history": growthCircleHistory?.toJson(),
        "/growth/circle/notes": growthCircleNotes?.toJson(),
        "/growth/circle/stats": growthCircleStats?.toJson(),
        "/growth/height": growthHeight?.toJson(),
        "/growth/height/delete/notes": growthHeightDeleteNotes?.toJson(),
        "/growth/height/delete/stats": growthHeightDeleteStats?.toJson(),
        "/growth/height/get": growthHeightGet?.toJson(),
        "/growth/height/history": growthHeightHistory?.toJson(),
        "/growth/height/notes": growthHeightNotes?.toJson(),
        "/growth/height/stats": growthHeightStats?.toJson(),
        "/growth/table/{sort_type}": growthTableSortType?.toJson(),
        "/growth/weight": growthWeight?.toJson(),
        "/growth/weight/delete/notes": growthWeightDeleteNotes?.toJson(),
        "/growth/weight/delete/stats": growthWeightDeleteStats?.toJson(),
        "/growth/weight/get": growthWeightGet?.toJson(),
        "/growth/weight/history": growthWeightHistory?.toJson(),
        "/growth/weight/notes": growthWeightNotes?.toJson(),
        "/growth/weight/stats": growthWeightStats?.toJson(),
        "/health/cons_doctor": healthConsDoctor?.toJson(),
        "/health/cons_doctor/": pathsHealthConsDoctor?.toJson(),
        "/health/cons_doctor/list": healthConsDoctorList?.toJson(),
        "/health/cons_doctor/{avatar}": healthConsDoctorAvatar?.toJson(),
        "/health/doc_vaccination": healthDocVaccination?.toJson(),
        "/health/drug": healthDrug?.toJson(),
        "/health/drug/": pathsHealthDrug?.toJson(),
        "/health/drug/completed": healthDrugCompleted?.toJson(),
        "/health/drug/list": healthDrugList?.toJson(),
        "/health/drug/{avatar}": healthDrugAvatar?.toJson(),
        "/health/ideal": healthIdeal?.toJson(),
        "/health/normal": healthNormal?.toJson(),
        "/health/temperature": healthTemperature?.toJson(),
        "/health/temperature/history": healthTemperatureHistory?.toJson(),
        "/health/vaccination": healthVaccination?.toJson(),
        "/health/vaccination/": pathsHealthVaccination?.toJson(),
        "/health/vaccination/list": healthVaccinationList?.toJson(),
        "/health/vaccination/{avatar}": healthVaccinationAvatar?.toJson(),
        "/moderator/create/chat": moderatorCreateChat?.toJson(),
        "/moderator/create/chat/add": moderatorCreateChatAdd?.toJson(),
        "/moderator/create/chat/avatar": moderatorCreateChatAvatar?.toJson(),
        "/moderator/create/chat/create": moderatorCreateChatCreate?.toJson(),
        "/moderator/create/doctor": moderatorCreateDoctor?.toJson(),
        "/moderator/create/feedback": moderatorCreateFeedback?.toJson(),
        "/moderator/create/feedback/go_chat": moderatorCreateFeedbackGoChat?.toJson(),
        "/moderator/create/feedback/list": moderatorCreateFeedbackList?.toJson(),
        "/moderator/create/feedback/type": moderatorCreateFeedbackType?.toJson(),
        "/moderator/create/moderator": moderatorCreateModerator?.toJson(),
        "/moderator/create/music/addCategory": moderatorCreateMusicAddCategory?.toJson(),
        "/moderator/create/music/addComposition": moderatorCreateMusicAddComposition?.toJson(),
        "/moderator/create/music/delete": moderatorCreateMusicDelete?.toJson(),
        "/moderator/create/notification": moderatorCreateNotification?.toJson(),
        "/moderator/create/online-school": moderatorCreateOnlineSchool?.toJson(),
        "/moderator/create/promocode": moderatorCreatePromocode?.toJson(),
        "/moderator/create/promocode/list": moderatorCreatePromocodeList?.toJson(),
        "/moderator/create/stat": moderatorCreateStat?.toJson(),
        "/moderator/create/stat/excel": moderatorCreateStatExcel?.toJson(),
        "/moderator/me": moderatorMe?.toJson(),
        "/music/": music?.toJson(),
        "/music/descriptions/{music}": musicDescriptionsMusic?.toJson(),
        "/music/{id}": musicId?.toJson(),
        "/notification/": notification?.toJson(),
        "/notification/delete-all/": notificationDeleteAll?.toJson(),
        "/notification/delete/": notificationDelete?.toJson(),
        "/notification/read-all/": notificationReadAll?.toJson(),
        "/notification/read/": notificationRead?.toJson(),
        "/online-school/": onlineSchool?.toJson(),
        "/online-school/all": onlineSchoolAll?.toJson(),
        "/online-school/course": onlineSchoolCourse?.toJson(),
        "/online-school/course/all": onlineSchoolCourseAll?.toJson(),
        "/online-school/number": onlineSchoolNumber?.toJson(),
        "/online-school/number/all": onlineSchoolNumberAll?.toJson(),
        "/payment/promocode": paymentPromocode?.toJson(),
        "/payment/status": paymentStatus?.toJson(),
        "/pdf/diapers/generate": pdfDiapersGenerate?.toJson(),
        "/pdf/doc_cons/generate": pdfDocConsGenerate?.toJson(),
        "/pdf/drug/generate": pdfDrugGenerate?.toJson(),
        "/pdf/feed/generate": pdfFeedGenerate?.toJson(),
        "/pdf/growth/generate": pdfGrowthGenerate?.toJson(),
        "/pdf/sleep_cry/generate": pdfSleepCryGenerate?.toJson(),
        "/pdf/temperature/generate": pdfTemperatureGenerate?.toJson(),
        "/pdf/vaccines/generate": pdfVaccinesGenerate?.toJson(),
        "/resources/article/photo/{id}": resourcesArticlePhotoId?.toJson(),
        "/resources/avatar/{avatar}": resourcesAvatarAvatar?.toJson(),
        "/sleep_cry/cry": sleepCryCry?.toJson(),
        "/sleep_cry/cry/get": sleepCryCryGet?.toJson(),
        "/sleep_cry/cry/history": sleepCryCryHistory?.toJson(),
        "/sleep_cry/period_table": sleepCryPeriodTable?.toJson(),
        "/sleep_cry/sleep": sleepCrySleep?.toJson(),
        "/sleep_cry/sleep/get": sleepCrySleepGet?.toJson(),
        "/sleep_cry/sleep/history": sleepCrySleepHistory?.toJson(),
        "/sleep_cry/table/{sort_type}": sleepCryTableSortType?.toJson(),
        "/tags/": tags?.toJson(),
        "/tags/article/{id}": tagsArticleId?.toJson(),
        "/tags/{id}": tagsId?.toJson(),
        "/tags/{name}": tagsName?.toJson(),
        "/user/": user?.toJson(),
        "/user/me": userMe?.toJson(),
        "/watcher/me": watcherMe?.toJson(),
        "/watcher/{typeOfWatch}": watcherTypeOfWatch?.toJson(),
    };
}

class AccountClass {
    final AccountGet? accountGet;

    AccountClass({
        this.accountGet,
    });

    factory AccountClass.fromJson(Map<String, dynamic> json) => AccountClass(
        accountGet: json["get"] == null ? null : AccountGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": accountGet?.toJson(),
    };
}

class AccountGet {
    final List<Security>? security;
    final List<String>? tags;
    final String? summary;
    final Map<String, PurpleResponse>? responses;
    final List<Authorization>? parameters;
    final String? description;

    AccountGet({
        this.security,
        this.tags,
        this.summary,
        this.responses,
        this.parameters,
        this.description,
    });

    factory AccountGet.fromJson(Map<String, dynamic> json) => AccountGet(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "description": description,
    };
}

class Authorization {
    final PropertyType? type;
    final String? description;
    final String? name;
    final In? authorizationIn;
    final bool? required;
    final List<String>? authorizationEnum;
    final AuthorizationSchema? schema;
    final String? authorizationDefault;

    Authorization({
        this.type,
        this.description,
        this.name,
        this.authorizationIn,
        this.required,
        this.authorizationEnum,
        this.schema,
        this.authorizationDefault,
    });

    factory Authorization.fromJson(Map<String, dynamic> json) => Authorization(
        type: propertyTypeValues.map[json["type"]]!,
        description: json["description"],
        name: json["name"],
        authorizationIn: inValues.map[json["in"]]!,
        required: json["required"],
        authorizationEnum: json["enum"] == null ? [] : List<String>.from(json["enum"]!.map((x) => x)),
        schema: json["schema"] == null ? null : AuthorizationSchema.fromJson(json["schema"]),
        authorizationDefault: json["default"],
    );

    Map<String, dynamic> toJson() => {
        "type": propertyTypeValues.reverse[type],
        "description": description,
        "name": name,
        "in": inValues.reverse[authorizationIn],
        "required": required,
        "enum": authorizationEnum == null ? [] : List<dynamic>.from(authorizationEnum!.map((x) => x)),
        "schema": schema?.toJson(),
        "default": authorizationDefault,
    };
}

enum In {
    BODY,
    FORM_DATA,
    HEADER,
    PATH,
    QUERY
}

final inValues = EnumValues({
    "body": In.BODY,
    "formData": In.FORM_DATA,
    "header": In.HEADER,
    "path": In.PATH,
    "query": In.QUERY
});

class AuthorizationSchema {
    final String? ref;
    final PropertyType? type;

    AuthorizationSchema({
        this.ref,
        this.type,
    });

    factory AuthorizationSchema.fromJson(Map<String, dynamic> json) => AuthorizationSchema(
        ref: json["\u0024ref"],
        type: propertyTypeValues.map[json["type"]]!,
    );

    Map<String, dynamic> toJson() => {
        "\u0024ref": ref,
        "type": propertyTypeValues.reverse[type],
    };
}

class PurpleResponse {
    final Description? description;
    final AccountElement? schema;

    PurpleResponse({
        this.description,
        this.schema,
    });

    factory PurpleResponse.fromJson(Map<String, dynamic> json) => PurpleResponse(
        description: descriptionValues.map[json["description"]]!,
        schema: json["schema"] == null ? null : AccountElement.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "description": descriptionValues.reverse[description],
        "schema": schema?.toJson(),
    };
}

enum Description {
    ACCEPTED,
    BAD_REQUEST,
    CREATED,
    FORBIDDEN,
    INTERNAL_SERVER_ERROR,
    NOT_FOUND,
    NO_CONTENT,
    OK,
    UNAUTHORIZED
}

final descriptionValues = EnumValues({
    "Accepted": Description.ACCEPTED,
    "Bad Request": Description.BAD_REQUEST,
    "Created": Description.CREATED,
    "Forbidden": Description.FORBIDDEN,
    "Internal Server Error": Description.INTERNAL_SERVER_ERROR,
    "Not Found": Description.NOT_FOUND,
    "No Content": Description.NO_CONTENT,
    "OK": Description.OK,
    "Unauthorized": Description.UNAUTHORIZED
});

class Security {
    final List<dynamic>? authorization;

    Security({
        this.authorization,
    });

    factory Security.fromJson(Map<String, dynamic> json) => Security(
        authorization: json["Authorization"] == null ? [] : List<dynamic>.from(json["Authorization"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "Authorization": authorization == null ? [] : List<dynamic>.from(authorization!.map((x) => x)),
    };
}

class Avatar {
    final GetClass? put;
    final AccountAvatarDelete? delete;

    Avatar({
        this.put,
        this.delete,
    });

    factory Avatar.fromJson(Map<String, dynamic> json) => Avatar(
        put: json["put"] == null ? null : GetClass.fromJson(json["put"]),
        delete: json["delete"] == null ? null : AccountAvatarDelete.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "put": put?.toJson(),
        "delete": delete?.toJson(),
    };
}

class AccountAvatarDelete {
    final List<Security>? security;
    final List<String>? tags;
    final String? summary;
    final Map<String, FluffyResponse>? responses;
    final List<DeleteParameter>? parameters;
    final List<String>? consumes;

    AccountAvatarDelete({
        this.security,
        this.tags,
        this.summary,
        this.responses,
        this.parameters,
        this.consumes,
    });

    factory AccountAvatarDelete.fromJson(Map<String, dynamic> json) => AccountAvatarDelete(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
        parameters: json["parameters"] == null ? [] : List<DeleteParameter>.from(json["parameters"]!.map((x) => DeleteParameter.fromJson(x))),
        consumes: json["consumes"] == null ? [] : List<String>.from(json["consumes"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => x)),
    };
}

class DeleteParameter {
    final String? description;
    final String? name;
    final In? parameterIn;
    final bool? required;
    final AccountElement? schema;
    final CategoryAgType? type;
    final Property? items;
    final String? collectionFormat;

    DeleteParameter({
        this.description,
        this.name,
        this.parameterIn,
        this.required,
        this.schema,
        this.type,
        this.items,
        this.collectionFormat,
    });

    factory DeleteParameter.fromJson(Map<String, dynamic> json) => DeleteParameter(
        description: json["description"],
        name: json["name"],
        parameterIn: inValues.map[json["in"]]!,
        required: json["required"],
        schema: json["schema"] == null ? null : AccountElement.fromJson(json["schema"]),
        type: categoryAgTypeValues.map[json["type"]]!,
        items: json["items"] == null ? null : Property.fromJson(json["items"]),
        collectionFormat: json["collectionFormat"],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "name": name,
        "in": inValues.reverse[parameterIn],
        "required": required,
        "schema": schema?.toJson(),
        "type": categoryAgTypeValues.reverse[type],
        "items": items?.toJson(),
        "collectionFormat": collectionFormat,
    };
}

class FluffyResponse {
    final Description? description;

    FluffyResponse({
        this.description,
    });

    factory FluffyResponse.fromJson(Map<String, dynamic> json) => FluffyResponse(
        description: descriptionValues.map[json["description"]]!,
    );

    Map<String, dynamic> toJson() => {
        "description": descriptionValues.reverse[description],
    };
}

class GetClass {
    final List<Security>? security;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, PurpleResponse>? responses;
    final List<Consume>? consumes;

    GetClass({
        this.security,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
        this.consumes,
    });

    factory GetClass.fromJson(Map<String, dynamic> json) => GetClass(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
        consumes: json["consumes"] == null ? [] : List<Consume>.from(json["consumes"]!.map((x) => consumeValues.map[x]!)),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => consumeValues.reverse[x])),
    };
}

enum Consume {
    APPLICATION_JSON
}

final consumeValues = EnumValues({
    "application/json": Consume.APPLICATION_JSON
});

class AccountDeleteId {
    final AccountDeleteIdDelete? delete;

    AccountDeleteId({
        this.delete,
    });

    factory AccountDeleteId.fromJson(Map<String, dynamic> json) => AccountDeleteId(
        delete: json["delete"] == null ? null : AccountDeleteIdDelete.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "delete": delete?.toJson(),
    };
}

class AccountDeleteIdDelete {
    final List<Security>? security;
    final List<String>? tags;
    final String? summary;
    final Map<String, FluffyResponse>? responses;
    final List<Authorization>? parameters;
    final String? description;

    AccountDeleteIdDelete({
        this.security,
        this.tags,
        this.summary,
        this.responses,
        this.parameters,
        this.description,
    });

    factory AccountDeleteIdDelete.fromJson(Map<String, dynamic> json) => AccountDeleteIdDelete(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "description": description,
    };
}

class AccountId {
    final AccountIdGet? accountIdGet;

    AccountId({
        this.accountIdGet,
    });

    factory AccountId.fromJson(Map<String, dynamic> json) => AccountId(
        accountIdGet: json["get"] == null ? null : AccountIdGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": accountIdGet?.toJson(),
    };
}

class AccountIdGet {
    final List<Security>? security;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, FluffyResponse>? responses;
    final List<Consume>? consumes;

    AccountIdGet({
        this.security,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
        this.consumes,
    });

    factory AccountIdGet.fromJson(Map<String, dynamic> json) => AccountIdGet(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
        consumes: json["consumes"] == null ? [] : List<Consume>.from(json["consumes"]!.map((x) => consumeValues.map[x]!)),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => consumeValues.reverse[x])),
    };
}

class AccountList {
    final DeleteClass? accountListGet;

    AccountList({
        this.accountListGet,
    });

    factory AccountList.fromJson(Map<String, dynamic> json) => AccountList(
        accountListGet: json["get"] == null ? null : DeleteClass.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": accountListGet?.toJson(),
    };
}

class DeleteClass {
    final List<Security>? security;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, PurpleResponse>? responses;

    DeleteClass({
        this.security,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory DeleteClass.fromJson(Map<String, dynamic> json) => DeleteClass(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class AccountNumber {
    final AccountDeleteIdDelete? patch;

    AccountNumber({
        this.patch,
    });

    factory AccountNumber.fromJson(Map<String, dynamic> json) => AccountNumber(
        patch: json["patch"] == null ? null : AccountDeleteIdDelete.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "patch": patch?.toJson(),
    };
}

class Article {
    final ArticlePut? put;

    Article({
        this.put,
    });

    factory Article.fromJson(Map<String, dynamic> json) => Article(
        put: json["put"] == null ? null : ArticlePut.fromJson(json["put"]),
    );

    Map<String, dynamic> toJson() => {
        "put": put?.toJson(),
    };
}

class ArticlePut {
    final List<Security>? security;
    final String? description;
    final List<Consume>? consumes;
    final List<Consume>? produces;
    final List<String>? tags;
    final String? summary;
    final List<PutParameter>? parameters;
    final Map<String, FluffyResponse>? responses;

    ArticlePut({
        this.security,
        this.description,
        this.consumes,
        this.produces,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory ArticlePut.fromJson(Map<String, dynamic> json) => ArticlePut(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        description: json["description"],
        consumes: json["consumes"] == null ? [] : List<Consume>.from(json["consumes"]!.map((x) => consumeValues.map[x]!)),
        produces: json["produces"] == null ? [] : List<Consume>.from(json["produces"]!.map((x) => consumeValues.map[x]!)),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<PutParameter>.from(json["parameters"]!.map((x) => PutParameter.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "description": description,
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => consumeValues.reverse[x])),
        "produces": produces == null ? [] : List<dynamic>.from(produces!.map((x) => consumeValues.reverse[x])),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class PutParameter {
    final CategoryAgType? type;
    final String? description;
    final String? name;
    final In? parameterIn;
    final Property? items;
    final String? collectionFormat;
    final bool? required;

    PutParameter({
        this.type,
        this.description,
        this.name,
        this.parameterIn,
        this.items,
        this.collectionFormat,
        this.required,
    });

    factory PutParameter.fromJson(Map<String, dynamic> json) => PutParameter(
        type: categoryAgTypeValues.map[json["type"]]!,
        description: json["description"],
        name: json["name"],
        parameterIn: inValues.map[json["in"]]!,
        items: json["items"] == null ? null : Property.fromJson(json["items"]),
        collectionFormat: json["collectionFormat"],
        required: json["required"],
    );

    Map<String, dynamic> toJson() => {
        "type": categoryAgTypeValues.reverse[type],
        "description": description,
        "name": name,
        "in": inValues.reverse[parameterIn],
        "items": items?.toJson(),
        "collectionFormat": collectionFormat,
        "required": required,
    };
}

class ArticleCategoryClass {
    final ArticleCategoryGet? articleGet;

    ArticleCategoryClass({
        this.articleGet,
    });

    factory ArticleCategoryClass.fromJson(Map<String, dynamic> json) => ArticleCategoryClass(
        articleGet: json["get"] == null ? null : ArticleCategoryGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": articleGet?.toJson(),
    };
}

class ArticleCategoryGet {
    final List<Security>? security;
    final List<Consume>? consumes;
    final List<Consume>? produces;
    final List<String>? tags;
    final String? summary;
    final Map<String, PurpleResponse>? responses;

    ArticleCategoryGet({
        this.security,
        this.consumes,
        this.produces,
        this.tags,
        this.summary,
        this.responses,
    });

    factory ArticleCategoryGet.fromJson(Map<String, dynamic> json) => ArticleCategoryGet(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        consumes: json["consumes"] == null ? [] : List<Consume>.from(json["consumes"]!.map((x) => consumeValues.map[x]!)),
        produces: json["produces"] == null ? [] : List<Consume>.from(json["produces"]!.map((x) => consumeValues.map[x]!)),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => consumeValues.reverse[x])),
        "produces": produces == null ? [] : List<dynamic>.from(produces!.map((x) => consumeValues.reverse[x])),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class ArticleCategoryAll {
    final DeleteClass? post;

    ArticleCategoryAll({
        this.post,
    });

    factory ArticleCategoryAll.fromJson(Map<String, dynamic> json) => ArticleCategoryAll(
        post: json["post"] == null ? null : DeleteClass.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class ArticleFavorite {
    final ArticleCategoryGet? articleFavoriteGet;
    final PutClass? delete;

    ArticleFavorite({
        this.articleFavoriteGet,
        this.delete,
    });

    factory ArticleFavorite.fromJson(Map<String, dynamic> json) => ArticleFavorite(
        articleFavoriteGet: json["get"] == null ? null : ArticleCategoryGet.fromJson(json["get"]),
        delete: json["delete"] == null ? null : PutClass.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "get": articleFavoriteGet?.toJson(),
        "delete": delete?.toJson(),
    };
}

class PutClass {
    final List<Security>? security;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, FluffyResponse>? responses;

    PutClass({
        this.security,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory PutClass.fromJson(Map<String, dynamic> json) => PutClass(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class ArticleFavoriteArticleIdClass {
    final ArticleFavoriteArticleIdPut? put;

    ArticleFavoriteArticleIdClass({
        this.put,
    });

    factory ArticleFavoriteArticleIdClass.fromJson(Map<String, dynamic> json) => ArticleFavoriteArticleIdClass(
        put: json["put"] == null ? null : ArticleFavoriteArticleIdPut.fromJson(json["put"]),
    );

    Map<String, dynamic> toJson() => {
        "put": put?.toJson(),
    };
}

class ArticleFavoriteArticleIdPut {
    final List<Security>? security;
    final List<Consume>? consumes;
    final List<Consume>? produces;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, PurpleResponse>? responses;

    ArticleFavoriteArticleIdPut({
        this.security,
        this.consumes,
        this.produces,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory ArticleFavoriteArticleIdPut.fromJson(Map<String, dynamic> json) => ArticleFavoriteArticleIdPut(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        consumes: json["consumes"] == null ? [] : List<Consume>.from(json["consumes"]!.map((x) => consumeValues.map[x]!)),
        produces: json["produces"] == null ? [] : List<Consume>.from(json["produces"]!.map((x) => consumeValues.map[x]!)),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => consumeValues.reverse[x])),
        "produces": produces == null ? [] : List<dynamic>.from(produces!.map((x) => consumeValues.reverse[x])),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class ArticlePhoto {
    final ArticlePhotoPatch? articlePhotoGet;
    final ArticlePhotoPost? post;
    final DeleteClass? delete;

    ArticlePhoto({
        this.articlePhotoGet,
        this.post,
        this.delete,
    });

    factory ArticlePhoto.fromJson(Map<String, dynamic> json) => ArticlePhoto(
        articlePhotoGet: json["get"] == null ? null : ArticlePhotoPatch.fromJson(json["get"]),
        post: json["post"] == null ? null : ArticlePhotoPost.fromJson(json["post"]),
        delete: json["delete"] == null ? null : DeleteClass.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "get": articlePhotoGet?.toJson(),
        "post": post?.toJson(),
        "delete": delete?.toJson(),
    };
}

class ArticlePhotoPatch {
    final List<Security>? security;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, TentacledResponse>? responses;

    ArticlePhotoPatch({
        this.security,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory ArticlePhotoPatch.fromJson(Map<String, dynamic> json) => ArticlePhotoPatch(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, TentacledResponse>(k, TentacledResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class TentacledResponse {
    final Description? description;
    final ResponseSchema? schema;

    TentacledResponse({
        this.description,
        this.schema,
    });

    factory TentacledResponse.fromJson(Map<String, dynamic> json) => TentacledResponse(
        description: descriptionValues.map[json["description"]]!,
        schema: json["schema"] == null ? null : ResponseSchema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "description": descriptionValues.reverse[description],
        "schema": schema?.toJson(),
    };
}

class ResponseSchema {
    final String? ref;
    final CategoryAgType? type;
    final AccountElement? items;

    ResponseSchema({
        this.ref,
        this.type,
        this.items,
    });

    factory ResponseSchema.fromJson(Map<String, dynamic> json) => ResponseSchema(
        ref: json["\u0024ref"],
        type: categoryAgTypeValues.map[json["type"]]!,
        items: json["items"] == null ? null : AccountElement.fromJson(json["items"]),
    );

    Map<String, dynamic> toJson() => {
        "\u0024ref": ref,
        "type": categoryAgTypeValues.reverse[type],
        "items": items?.toJson(),
    };
}

class ArticlePhotoPost {
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, PurpleResponse>? responses;

    ArticlePhotoPost({
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory ArticlePhotoPost.fromJson(Map<String, dynamic> json) => ArticlePhotoPost(
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class AuthAccessToken {
    final ArticlePhotoPost? authAccessTokenGet;

    AuthAccessToken({
        this.authAccessTokenGet,
    });

    factory AuthAccessToken.fromJson(Map<String, dynamic> json) => AuthAccessToken(
        authAccessTokenGet: json["get"] == null ? null : ArticlePhotoPost.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": authAccessTokenGet?.toJson(),
    };
}

class AuthLogOut {
    final AccountDeleteIdDelete? authLogOutGet;

    AuthLogOut({
        this.authLogOutGet,
    });

    factory AuthLogOut.fromJson(Map<String, dynamic> json) => AuthLogOut(
        authLogOutGet: json["get"] == null ? null : AccountDeleteIdDelete.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": authLogOutGet?.toJson(),
    };
}

class AuthSendPhoneCode {
    final AccountDeleteIdDelete? post;

    AuthSendPhoneCode({
        this.post,
    });

    factory AuthSendPhoneCode.fromJson(Map<String, dynamic> json) => AuthSendPhoneCode(
        post: json["post"] == null ? null : AccountDeleteIdDelete.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class AuthSignIn {
    final AuthSignInPatch? patch;

    AuthSignIn({
        this.patch,
    });

    factory AuthSignIn.fromJson(Map<String, dynamic> json) => AuthSignIn(
        patch: json["patch"] == null ? null : AuthSignInPatch.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "patch": patch?.toJson(),
    };
}

class AuthSignInPatch {
    final String? description;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, TentacledResponse>? responses;

    AuthSignInPatch({
        this.description,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory AuthSignInPatch.fromJson(Map<String, dynamic> json) => AuthSignInPatch(
        description: json["description"],
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, TentacledResponse>(k, TentacledResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class AuthSignUp {
    final AuthSignUpPatch? patch;

    AuthSignUp({
        this.patch,
    });

    factory AuthSignUp.fromJson(Map<String, dynamic> json) => AuthSignUp(
        patch: json["patch"] == null ? null : AuthSignUpPatch.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "patch": patch?.toJson(),
    };
}

class AuthSignUpPatch {
    final String? description;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, PurpleResponse>? responses;

    AuthSignUpPatch({
        this.description,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory AuthSignUpPatch.fromJson(Map<String, dynamic> json) => AuthSignUpPatch(
        description: json["description"],
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class AuthUpdatePhone {
    final ArticlePhotoPatch? patch;

    AuthUpdatePhone({
        this.patch,
    });

    factory AuthUpdatePhone.fromJson(Map<String, dynamic> json) => AuthUpdatePhone(
        patch: json["patch"] == null ? null : ArticlePhotoPatch.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "patch": patch?.toJson(),
    };
}

class ModeratorMeClass {
    final GetClass? categoryGet;

    ModeratorMeClass({
        this.categoryGet,
    });

    factory ModeratorMeClass.fromJson(Map<String, dynamic> json) => ModeratorMeClass(
        categoryGet: json["get"] == null ? null : GetClass.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": categoryGet?.toJson(),
    };
}

class CategoryAge {
    final GetClass? categoryAgeGet;
    final CategoryPost? post;

    CategoryAge({
        this.categoryAgeGet,
        this.post,
    });

    factory CategoryAge.fromJson(Map<String, dynamic> json) => CategoryAge(
        categoryAgeGet: json["get"] == null ? null : GetClass.fromJson(json["get"]),
        post: json["post"] == null ? null : CategoryPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "get": categoryAgeGet?.toJson(),
        "post": post?.toJson(),
    };
}

class CategoryPost {
    final List<Security>? security;
    final List<Consume>? consumes;
    final List<Consume>? produces;
    final List<PatchTag>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, PurpleResponse>? responses;

    CategoryPost({
        this.security,
        this.consumes,
        this.produces,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory CategoryPost.fromJson(Map<String, dynamic> json) => CategoryPost(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        consumes: json["consumes"] == null ? [] : List<Consume>.from(json["consumes"]!.map((x) => consumeValues.map[x]!)),
        produces: json["produces"] == null ? [] : List<Consume>.from(json["produces"]!.map((x) => consumeValues.map[x]!)),
        tags: json["tags"] == null ? [] : List<PatchTag>.from(json["tags"]!.map((x) => patchTagValues.map[x]!)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => consumeValues.reverse[x])),
        "produces": produces == null ? [] : List<dynamic>.from(produces!.map((x) => consumeValues.reverse[x])),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => patchTagValues.reverse[x])),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

enum PatchTag {
    CATEGORY,
    DIAPER,
    FEED,
    GROWTH,
    HEALTH,
    SLEEP_CRY
}

final patchTagValues = EnumValues({
    "Category": PatchTag.CATEGORY,
    "Diaper": PatchTag.DIAPER,
    "Feed": PatchTag.FEED,
    "Growth": PatchTag.GROWTH,
    "Health": PatchTag.HEALTH,
    "SleepCry": PatchTag.SLEEP_CRY
});

class Chat {
    final GetClass? post;

    Chat({
        this.post,
    });

    factory Chat.fromJson(Map<String, dynamic> json) => Chat(
        post: json["post"] == null ? null : GetClass.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class ChatMessageFileChatId {
    final ChatMessageFileChatIdPost? post;

    ChatMessageFileChatId({
        this.post,
    });

    factory ChatMessageFileChatId.fromJson(Map<String, dynamic> json) => ChatMessageFileChatId(
        post: json["post"] == null ? null : ChatMessageFileChatIdPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class ChatMessageFileChatIdPost {
    final List<Security>? security;
    final List<String>? consumes;
    final List<String>? tags;
    final String? summary;
    final List<DeleteParameter>? parameters;
    final Map<String, PurpleResponse>? responses;

    ChatMessageFileChatIdPost({
        this.security,
        this.consumes,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory ChatMessageFileChatIdPost.fromJson(Map<String, dynamic> json) => ChatMessageFileChatIdPost(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        consumes: json["consumes"] == null ? [] : List<String>.from(json["consumes"]!.map((x) => x)),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<DeleteParameter>.from(json["parameters"]!.map((x) => DeleteParameter.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => x)),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class ChatMessageFileFilepath {
    final ChatMessageFileFilepathGet? chatMessageFileFilepathGet;

    ChatMessageFileFilepath({
        this.chatMessageFileFilepathGet,
    });

    factory ChatMessageFileFilepath.fromJson(Map<String, dynamic> json) => ChatMessageFileFilepath(
        chatMessageFileFilepathGet: json["get"] == null ? null : ChatMessageFileFilepathGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": chatMessageFileFilepathGet?.toJson(),
    };
}

class ChatMessageFileFilepathGet {
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, FluffyResponse>? responses;

    ChatMessageFileFilepathGet({
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory ChatMessageFileFilepathGet.fromJson(Map<String, dynamic> json) => ChatMessageFileFilepathGet(
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class ChatResourcesAvatarAvatar {
    final ChatResourcesAvatarAvatarGet? chatResourcesAvatarAvatarGet;

    ChatResourcesAvatarAvatar({
        this.chatResourcesAvatarAvatarGet,
    });

    factory ChatResourcesAvatarAvatar.fromJson(Map<String, dynamic> json) => ChatResourcesAvatarAvatar(
        chatResourcesAvatarAvatarGet: json["get"] == null ? null : ChatResourcesAvatarAvatarGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": chatResourcesAvatarAvatarGet?.toJson(),
    };
}

class ChatResourcesAvatarAvatarGet {
    final String? description;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, FluffyResponse>? responses;
    final List<Security>? security;
    final List<String>? consumes;

    ChatResourcesAvatarAvatarGet({
        this.description,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
        this.security,
        this.consumes,
    });

    factory ChatResourcesAvatarAvatarGet.fromJson(Map<String, dynamic> json) => ChatResourcesAvatarAvatarGet(
        description: json["description"],
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        consumes: json["consumes"] == null ? [] : List<String>.from(json["consumes"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => x)),
    };
}

class ChildClass {
    final AccountDeleteIdDelete? childGet;
    final ChildPatch? post;
    final ChildPatch? patch;

    ChildClass({
        this.childGet,
        this.post,
        this.patch,
    });

    factory ChildClass.fromJson(Map<String, dynamic> json) => ChildClass(
        childGet: json["get"] == null ? null : AccountDeleteIdDelete.fromJson(json["get"]),
        post: json["post"] == null ? null : ChildPatch.fromJson(json["post"]),
        patch: json["patch"] == null ? null : ChildPatch.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "get": childGet?.toJson(),
        "post": post?.toJson(),
        "patch": patch?.toJson(),
    };
}

class ChildPatch {
    final List<Security>? security;
    final List<Consume>? consumes;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, PurpleResponse>? responses;
    final String? description;

    ChildPatch({
        this.security,
        this.consumes,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
        this.description,
    });

    factory ChildPatch.fromJson(Map<String, dynamic> json) => ChildPatch(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        consumes: json["consumes"] == null ? [] : List<Consume>.from(json["consumes"]!.map((x) => consumeValues.map[x]!)),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => consumeValues.reverse[x])),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "description": description,
    };
}

class Consultation {
    final ConsultationGet? consultationGet;

    Consultation({
        this.consultationGet,
    });

    factory Consultation.fromJson(Map<String, dynamic> json) => Consultation(
        consultationGet: json["get"] == null ? null : ConsultationGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": consultationGet?.toJson(),
    };
}

class ConsultationGet {
    final List<Security>? security;
    final String? description;
    final List<Consume>? consumes;
    final List<Consume>? produces;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, PurpleResponse>? responses;

    ConsultationGet({
        this.security,
        this.description,
        this.consumes,
        this.produces,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory ConsultationGet.fromJson(Map<String, dynamic> json) => ConsultationGet(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        description: json["description"],
        consumes: json["consumes"] == null ? [] : List<Consume>.from(json["consumes"]!.map((x) => consumeValues.map[x]!)),
        produces: json["produces"] == null ? [] : List<Consume>.from(json["produces"]!.map((x) => consumeValues.map[x]!)),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "description": description,
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => consumeValues.reverse[x])),
        "produces": produces == null ? [] : List<dynamic>.from(produces!.map((x) => consumeValues.reverse[x])),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class ConsultationId {
    final ConsultationGet? consultationIdGet;
    final ConsultationIdDelete? delete;

    ConsultationId({
        this.consultationIdGet,
        this.delete,
    });

    factory ConsultationId.fromJson(Map<String, dynamic> json) => ConsultationId(
        consultationIdGet: json["get"] == null ? null : ConsultationGet.fromJson(json["get"]),
        delete: json["delete"] == null ? null : ConsultationIdDelete.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "get": consultationIdGet?.toJson(),
        "delete": delete?.toJson(),
    };
}

class ConsultationIdDelete {
    final List<Security>? security;
    final String? description;
    final List<Consume>? consumes;
    final List<Consume>? produces;
    final List<String>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, FluffyResponse>? responses;

    ConsultationIdDelete({
        this.security,
        this.description,
        this.consumes,
        this.produces,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory ConsultationIdDelete.fromJson(Map<String, dynamic> json) => ConsultationIdDelete(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        description: json["description"],
        consumes: json["consumes"] == null ? [] : List<Consume>.from(json["consumes"]!.map((x) => consumeValues.map[x]!)),
        produces: json["produces"] == null ? [] : List<Consume>.from(json["produces"]!.map((x) => consumeValues.map[x]!)),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "description": description,
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => consumeValues.reverse[x])),
        "produces": produces == null ? [] : List<dynamic>.from(produces!.map((x) => consumeValues.reverse[x])),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class ConsultationSet {
    final ConsultationGet? post;

    ConsultationSet({
        this.post,
    });

    factory ConsultationSet.fromJson(Map<String, dynamic> json) => ConsultationSet(
        post: json["post"] == null ? null : ConsultationGet.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class ConsultationUpdateId {
    final ConsultationGet? patch;

    ConsultationUpdateId({
        this.patch,
    });

    factory ConsultationUpdateId.fromJson(Map<String, dynamic> json) => ConsultationUpdateId(
        patch: json["patch"] == null ? null : ConsultationGet.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "patch": patch?.toJson(),
    };
}

class Diaper {
    final CategoryPost? post;
    final DiaperPatch? patch;

    Diaper({
        this.post,
        this.patch,
    });

    factory Diaper.fromJson(Map<String, dynamic> json) => Diaper(
        post: json["post"] == null ? null : CategoryPost.fromJson(json["post"]),
        patch: json["patch"] == null ? null : DiaperPatch.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
        "patch": patch?.toJson(),
    };
}

class DiaperPatch {
    final List<Security>? security;
    final List<String>? consumes;
    final List<Consume>? produces;
    final List<PatchTag>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, FluffyResponse>? responses;

    DiaperPatch({
        this.security,
        this.consumes,
        this.produces,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory DiaperPatch.fromJson(Map<String, dynamic> json) => DiaperPatch(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        consumes: json["consumes"] == null ? [] : List<String>.from(json["consumes"]!.map((x) => x)),
        produces: json["produces"] == null ? [] : List<Consume>.from(json["produces"]!.map((x) => consumeValues.map[x]!)),
        tags: json["tags"] == null ? [] : List<PatchTag>.from(json["tags"]!.map((x) => patchTagValues.map[x]!)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => x)),
        "produces": produces == null ? [] : List<dynamic>.from(produces!.map((x) => consumeValues.reverse[x])),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => patchTagValues.reverse[x])),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class DiaperListClass {
    final CategoryPost? post;

    DiaperListClass({
        this.post,
    });

    factory DiaperListClass.fromJson(Map<String, dynamic> json) => DiaperListClass(
        post: json["post"] == null ? null : CategoryPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class Doctor {
    final GetClass? doctorGet;
    final PutClass? patch;

    Doctor({
        this.doctorGet,
        this.patch,
    });

    factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        doctorGet: json["get"] == null ? null : GetClass.fromJson(json["get"]),
        patch: json["patch"] == null ? null : PutClass.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "get": doctorGet?.toJson(),
        "patch": patch?.toJson(),
    };
}

class DoctorId {
    final ChatMessageFileChatIdPost? doctorIdGet;

    DoctorId({
        this.doctorIdGet,
    });

    factory DoctorId.fromJson(Map<String, dynamic> json) => DoctorId(
        doctorIdGet: json["get"] == null ? null : ChatMessageFileChatIdPost.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": doctorIdGet?.toJson(),
    };
}

class RMe {
    final DoctorMeGet? rMeGet;

    RMe({
        this.rMeGet,
    });

    factory RMe.fromJson(Map<String, dynamic> json) => RMe(
        rMeGet: json["get"] == null ? null : DoctorMeGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": rMeGet?.toJson(),
    };
}

class DoctorMeGet {
    final List<Security>? security;
    final List<Consume>? consumes;
    final List<String>? tags;
    final String? summary;
    final Map<String, PurpleResponse>? responses;

    DoctorMeGet({
        this.security,
        this.consumes,
        this.tags,
        this.summary,
        this.responses,
    });

    factory DoctorMeGet.fromJson(Map<String, dynamic> json) => DoctorMeGet(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        consumes: json["consumes"] == null ? [] : List<Consume>.from(json["consumes"]!.map((x) => consumeValues.map[x]!)),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "consumes": consumes == null ? [] : List<dynamic>.from(consumes!.map((x) => consumeValues.reverse[x])),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class DoctorUpdateWorkTime {
    final PutClass? patch;

    DoctorUpdateWorkTime({
        this.patch,
    });

    factory DoctorUpdateWorkTime.fromJson(Map<String, dynamic> json) => DoctorUpdateWorkTime(
        patch: json["patch"] == null ? null : PutClass.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "patch": patch?.toJson(),
    };
}

class DoctorWorkTime {
    final PutClass? delete;

    DoctorWorkTime({
        this.delete,
    });

    factory DoctorWorkTime.fromJson(Map<String, dynamic> json) => DoctorWorkTime(
        delete: json["delete"] == null ? null : PutClass.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "delete": delete?.toJson(),
    };
}

class FeedChestHistory {
    final CategoryPost? feedChestHistoryGet;

    FeedChestHistory({
        this.feedChestHistoryGet,
    });

    factory FeedChestHistory.fromJson(Map<String, dynamic> json) => FeedChestHistory(
        feedChestHistoryGet: json["get"] == null ? null : CategoryPost.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": feedChestHistoryGet?.toJson(),
    };
}

class FeedLure {
    final DiaperPatch? post;

    FeedLure({
        this.post,
    });

    factory FeedLure.fromJson(Map<String, dynamic> json) => FeedLure(
        post: json["post"] == null ? null : DiaperPatch.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class Feedback {
    final ChildPatch? post;

    Feedback({
        this.post,
    });

    factory Feedback.fromJson(Map<String, dynamic> json) => Feedback(
        post: json["post"] == null ? null : ChildPatch.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class Growth {
    final CategoryPost? growthGet;
    final CategoryPost? post;

    Growth({
        this.growthGet,
        this.post,
    });

    factory Growth.fromJson(Map<String, dynamic> json) => Growth(
        growthGet: json["get"] == null ? null : CategoryPost.fromJson(json["get"]),
        post: json["post"] == null ? null : CategoryPost.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "get": growthGet?.toJson(),
        "post": post?.toJson(),
    };
}

class Health {
    final DiaperPatch? post;
    final AccountIdGet? patch;

    Health({
        this.post,
        this.patch,
    });

    factory Health.fromJson(Map<String, dynamic> json) => Health(
        post: json["post"] == null ? null : DiaperPatch.fromJson(json["post"]),
        patch: json["patch"] == null ? null : AccountIdGet.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
        "patch": patch?.toJson(),
    };
}

class HealthDocVaccination {
    final ChatResourcesAvatarAvatarGet? healthDocVaccinationGet;
    final DiaperPatch? post;

    HealthDocVaccination({
        this.healthDocVaccinationGet,
        this.post,
    });

    factory HealthDocVaccination.fromJson(Map<String, dynamic> json) => HealthDocVaccination(
        healthDocVaccinationGet: json["get"] == null ? null : ChatResourcesAvatarAvatarGet.fromJson(json["get"]),
        post: json["post"] == null ? null : DiaperPatch.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "get": healthDocVaccinationGet?.toJson(),
        "post": post?.toJson(),
    };
}

class HealthDrugCompleted {
    final AccountAvatarDelete? patch;

    HealthDrugCompleted({
        this.patch,
    });

    factory HealthDrugCompleted.fromJson(Map<String, dynamic> json) => HealthDrugCompleted(
        patch: json["patch"] == null ? null : AccountAvatarDelete.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "patch": patch?.toJson(),
    };
}

class ModeratorCreate {
    final AccountAvatarDelete? post;

    ModeratorCreate({
        this.post,
    });

    factory ModeratorCreate.fromJson(Map<String, dynamic> json) => ModeratorCreate(
        post: json["post"] == null ? null : AccountAvatarDelete.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class ModeratorCreateFeedback {
    final AccountDeleteIdDelete? delete;
    final AccountDeleteIdDelete? patch;

    ModeratorCreateFeedback({
        this.delete,
        this.patch,
    });

    factory ModeratorCreateFeedback.fromJson(Map<String, dynamic> json) => ModeratorCreateFeedback(
        delete: json["delete"] == null ? null : AccountDeleteIdDelete.fromJson(json["delete"]),
        patch: json["patch"] == null ? null : AccountDeleteIdDelete.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "delete": delete?.toJson(),
        "patch": patch?.toJson(),
    };
}

class ModeratorCreateNotification {
    final PutClass? post;

    ModeratorCreateNotification({
        this.post,
    });

    factory ModeratorCreateNotification.fromJson(Map<String, dynamic> json) => ModeratorCreateNotification(
        post: json["post"] == null ? null : PutClass.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class ModeratorCreatePromocode {
    final AccountDeleteIdDelete? post;
    final ConsultationIdDelete? delete;
    final AccountDeleteIdDelete? patch;

    ModeratorCreatePromocode({
        this.post,
        this.delete,
        this.patch,
    });

    factory ModeratorCreatePromocode.fromJson(Map<String, dynamic> json) => ModeratorCreatePromocode(
        post: json["post"] == null ? null : AccountDeleteIdDelete.fromJson(json["post"]),
        delete: json["delete"] == null ? null : ConsultationIdDelete.fromJson(json["delete"]),
        patch: json["patch"] == null ? null : AccountDeleteIdDelete.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
        "delete": delete?.toJson(),
        "patch": patch?.toJson(),
    };
}

class Music {
    final PutClass? musicGet;

    Music({
        this.musicGet,
    });

    factory Music.fromJson(Map<String, dynamic> json) => Music(
        musicGet: json["get"] == null ? null : PutClass.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": musicGet?.toJson(),
    };
}

class Notification {
    final NotificationGet? notificationGet;

    Notification({
        this.notificationGet,
    });

    factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        notificationGet: json["get"] == null ? null : NotificationGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": notificationGet?.toJson(),
    };
}

class NotificationGet {
    final List<Security>? security;
    final List<String>? tags;
    final String? summary;
    final Map<String, PurpleResponse>? responses;

    NotificationGet({
        this.security,
        this.tags,
        this.summary,
        this.responses,
    });

    factory NotificationGet.fromJson(Map<String, dynamic> json) => NotificationGet(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        summary: json["summary"],
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "summary": summary,
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class NotificationRead {
    final PutClass? put;

    NotificationRead({
        this.put,
    });

    factory NotificationRead.fromJson(Map<String, dynamic> json) => NotificationRead(
        put: json["put"] == null ? null : PutClass.fromJson(json["put"]),
    );

    Map<String, dynamic> toJson() => {
        "put": put?.toJson(),
    };
}

class OnlineSchool {
    final OnlineSchoolGet? onlineSchoolGet;
    final OnlineSchoolPut? put;

    OnlineSchool({
        this.onlineSchoolGet,
        this.put,
    });

    factory OnlineSchool.fromJson(Map<String, dynamic> json) => OnlineSchool(
        onlineSchoolGet: json["get"] == null ? null : OnlineSchoolGet.fromJson(json["get"]),
        put: json["put"] == null ? null : OnlineSchoolPut.fromJson(json["put"]),
    );

    Map<String, dynamic> toJson() => {
        "get": onlineSchoolGet?.toJson(),
        "put": put?.toJson(),
    };
}

class OnlineSchoolGet {
    final List<Security>? security;
    final List<PutTag>? tags;
    final String? summary;
    final Map<String, PurpleResponse>? responses;
    final List<Authorization>? parameters;

    OnlineSchoolGet({
        this.security,
        this.tags,
        this.summary,
        this.responses,
        this.parameters,
    });

    factory OnlineSchoolGet.fromJson(Map<String, dynamic> json) => OnlineSchoolGet(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<PutTag>.from(json["tags"]!.map((x) => putTagValues.map[x]!)),
        summary: json["summary"],
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, PurpleResponse>(k, PurpleResponse.fromJson(v))),
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => putTagValues.reverse[x])),
        "summary": summary,
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
    };
}

enum PutTag {
    ONLINE_SCHOOL,
    PDF
}

final putTagValues = EnumValues({
    "OnlineSchool": PutTag.ONLINE_SCHOOL,
    "PDF": PutTag.PDF
});

class OnlineSchoolPut {
    final List<Security>? security;
    final List<PutTag>? tags;
    final String? summary;
    final List<Authorization>? parameters;
    final Map<String, FluffyResponse>? responses;

    OnlineSchoolPut({
        this.security,
        this.tags,
        this.summary,
        this.parameters,
        this.responses,
    });

    factory OnlineSchoolPut.fromJson(Map<String, dynamic> json) => OnlineSchoolPut(
        security: json["security"] == null ? [] : List<Security>.from(json["security"]!.map((x) => Security.fromJson(x))),
        tags: json["tags"] == null ? [] : List<PutTag>.from(json["tags"]!.map((x) => putTagValues.map[x]!)),
        summary: json["summary"],
        parameters: json["parameters"] == null ? [] : List<Authorization>.from(json["parameters"]!.map((x) => Authorization.fromJson(x))),
        responses: Map.from(json["responses"]!).map((k, v) => MapEntry<String, FluffyResponse>(k, FluffyResponse.fromJson(v))),
    );

    Map<String, dynamic> toJson() => {
        "security": security == null ? [] : List<dynamic>.from(security!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => putTagValues.reverse[x])),
        "summary": summary,
        "parameters": parameters == null ? [] : List<dynamic>.from(parameters!.map((x) => x.toJson())),
        "responses": Map.from(responses!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    };
}

class OnlineSchoolAll {
    final OnlineSchoolGet? onlineSchoolAllGet;

    OnlineSchoolAll({
        this.onlineSchoolAllGet,
    });

    factory OnlineSchoolAll.fromJson(Map<String, dynamic> json) => OnlineSchoolAll(
        onlineSchoolAllGet: json["get"] == null ? null : OnlineSchoolGet.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": onlineSchoolAllGet?.toJson(),
    };
}

class OnlineSchoolCourseClass {
    final OnlineSchoolPut? put;
    final AccountDeleteIdDelete? post;
    final PutClass? delete;

    OnlineSchoolCourseClass({
        this.put,
        this.post,
        this.delete,
    });

    factory OnlineSchoolCourseClass.fromJson(Map<String, dynamic> json) => OnlineSchoolCourseClass(
        put: json["put"] == null ? null : OnlineSchoolPut.fromJson(json["put"]),
        post: json["post"] == null ? null : AccountDeleteIdDelete.fromJson(json["post"]),
        delete: json["delete"] == null ? null : PutClass.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "put": put?.toJson(),
        "post": post?.toJson(),
        "delete": delete?.toJson(),
    };
}

class ArticleClass {
    final DeleteClass? articleGet;
    final ArticlePut? post;

    ArticleClass({
        this.articleGet,
        this.post,
    });

    factory ArticleClass.fromJson(Map<String, dynamic> json) => ArticleClass(
        articleGet: json["get"] == null ? null : DeleteClass.fromJson(json["get"]),
        post: json["post"] == null ? null : ArticlePut.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "get": articleGet?.toJson(),
        "post": post?.toJson(),
    };
}

class DiaperClass {
    final AccountAvatarDelete? delete;

    DiaperClass({
        this.delete,
    });

    factory DiaperClass.fromJson(Map<String, dynamic> json) => DiaperClass(
        delete: json["delete"] == null ? null : AccountAvatarDelete.fromJson(json["delete"]),
    );

    Map<String, dynamic> toJson() => {
        "delete": delete?.toJson(),
    };
}

class PdfGenerate {
    final OnlineSchoolPut? post;

    PdfGenerate({
        this.post,
    });

    factory PdfGenerate.fromJson(Map<String, dynamic> json) => PdfGenerate(
        post: json["post"] == null ? null : OnlineSchoolPut.fromJson(json["post"]),
    );

    Map<String, dynamic> toJson() => {
        "post": post?.toJson(),
    };
}

class Tags {
    final AccountGet? tagsGet;
    final AccountGet? post;
    final AccountDeleteIdDelete? delete;
    final AccountDeleteIdDelete? patch;

    Tags({
        this.tagsGet,
        this.post,
        this.delete,
        this.patch,
    });

    factory Tags.fromJson(Map<String, dynamic> json) => Tags(
        tagsGet: json["get"] == null ? null : AccountGet.fromJson(json["get"]),
        post: json["post"] == null ? null : AccountGet.fromJson(json["post"]),
        delete: json["delete"] == null ? null : AccountDeleteIdDelete.fromJson(json["delete"]),
        patch: json["patch"] == null ? null : AccountDeleteIdDelete.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "get": tagsGet?.toJson(),
        "post": post?.toJson(),
        "delete": delete?.toJson(),
        "patch": patch?.toJson(),
    };
}

class UserClass {
    final AccountGet? userGet;
    final AccountDeleteIdDelete? patch;

    UserClass({
        this.userGet,
        this.patch,
    });

    factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        userGet: json["get"] == null ? null : AccountGet.fromJson(json["get"]),
        patch: json["patch"] == null ? null : AccountDeleteIdDelete.fromJson(json["patch"]),
    );

    Map<String, dynamic> toJson() => {
        "get": userGet?.toJson(),
        "patch": patch?.toJson(),
    };
}

class WatcherTypeOfWatch {
    final AccountAvatarDelete? watcherTypeOfWatchGet;

    WatcherTypeOfWatch({
        this.watcherTypeOfWatchGet,
    });

    factory WatcherTypeOfWatch.fromJson(Map<String, dynamic> json) => WatcherTypeOfWatch(
        watcherTypeOfWatchGet: json["get"] == null ? null : AccountAvatarDelete.fromJson(json["get"]),
    );

    Map<String, dynamic> toJson() => {
        "get": watcherTypeOfWatchGet?.toJson(),
    };
}

class SecurityDefinitions {
    final Authorization? authorization;

    SecurityDefinitions({
        this.authorization,
    });

    factory SecurityDefinitions.fromJson(Map<String, dynamic> json) => SecurityDefinitions(
        authorization: json["Authorization"] == null ? null : Authorization.fromJson(json["Authorization"]),
    );

    Map<String, dynamic> toJson() => {
        "Authorization": authorization?.toJson(),
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
