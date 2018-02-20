project.name = "KatanaUI"

katana = target do |target|
    target.name = "KatanaUI"
    target.platform = :ios
    target.deployment_target = 9.0
    target.language = :swift
    target.type = :framework
    target.include_files = [
        "KatanaUI/Core/**/*.swift",
        "KatanaUI/Extensions/**/*.swift",
        "KatanaUI/Plastic/**/*.swift"
    ]

    target.all_configurations.each do |configuration|
        configuration.settings["INFOPLIST_FILE"] = "KatanaUI/Info.plist"
        configuration.settings["PRODUCT_NAME"] = "KatanaUI"
	    configuration.settings["SWIFT_VERSION"] = "4.0"
    end

    target.headers_build_phase do |phase|
        phase.public << "KatanaUI/Katana.h"
    end

    unit_tests_for target do |unit_test|
        unit_test.linked_targets = [target]
        unit_test.include_files = [
            "KatanaTests/Animations/**/*.swift",
            "KatanaTests/Core/**/*.swift",
            "KatanaTests/Extensions/**/*.swift",
            "KatanaTests/NodeDescriptions/**/*.swift",
            "KatanaTests/Plastic/**/*.swift"
        ]

        unit_test.all_configurations.each do |configuration|
            configuration.settings["INFOPLIST_FILE"] = "KatanaTests/Info.plist"
	        configuration.settings["SWIFT_VERSION"] = "4.0"
        end
    end

    target.scheme(target.name)
end


# # Katana Elements iOS Framework target
# katana_elements_ios = target do |target|
#     target.name = "KatanaElements iOS"
#     target.platform = :ios
#     target.deployment_target = 9.0
#     target.language = :swift
#     target.type = :framework
#     target.linked_targets = [katana_ios]
#     target.include_files = [
#         "KatanaElements/Common/**/*.swift",
#         "KatanaElements/iOS/**/*.swift"
#     ]

#     target.all_configurations.each do |configuration|
#         configuration.settings["INFOPLIST_FILE"] = "KatanaElements/iOS/Info.plist"
#         configuration.settings["PRODUCT_NAME"] = "KatanaElements"
# 	configuration.settings["SWIFT_VERSION"] = "4.0"
#     end

#     target.headers_build_phase do |phase|
#         phase.public << "KatanaElements/iOS/KatanaElements.h"
#     end

#     target.scheme(target.name)
# end

# # iOS Demo target
# demo_ios = target do |target|
#     target.name = "Demo iOS"
#     target.platform = :ios
#     target.language = :swift
#     target.deployment_target = 9.0
#     target.type = :application
#     target.linked_targets = [katana_ios, katana_elements_ios]
    
#     target.include_files = [
#         "Demo/Common/**/*.swift",
#         "Demo/IOS/**/*.swift",
#         "Demo/IOS/LunchScreen.storyboard",
#     ]

#     target.all_configurations.each do |configuration|
#         configuration.product_bundle_identifier = "dk.bendingspoons.Demo"
#         configuration.settings["INFOPLIST_FILE"] = "Demo/IOS/Info.plist"
#         configuration.settings["PRODUCT_NAME"] = "Demo iOS"
# 	configuration.settings["SWIFT_VERSION"] = "4.0"
#     end

#     target.scheme(target.name)
# end