class Courseware
  def help
    puts <<-EOF.gsub(/^ {6}/, '')
      NAME
        Courseware Manager

      SYNOPSIS
        courseware [-c CONFIG] [-d] <verb> [subject] [subject] ...

      DESCRIPTION
        Manage the development lifecycle of Puppet Labs courseware. This tool is not
        required for presenting the material or for contributing minor updates.

        The following verbs are recognized:

        * print
            Render course material as PDF files. This verb accepts one or more of the
            following arguments, where the default is all.

            Arguments (optional):
               handouts: Generate handout notes
              exercises: Generate the lab exercise manual
              solutions: Generate the solution guide

        * watermark
            Render watermarked PDF files. Accepts same arguements as the `print` verb.

        * generate or update
            Build new or update certain kinds of configuration. By default, this will
            update the stylesheet.

            Arguments (optional):
              skeleton <name>: Build a new course directory named <name> and generate
                               required metadata for a Showoff presentation.

                       config: Write current configuration to a `courseware.yaml` file.

                       styles: Generate or update the stylesheet for the current version.

                        links: Ensure that all required symlinks are in place.

                     metadata: Interactively generate or update the `showoff.json` file.

        * validate
            Validate certain things. Not yet implemented.

        * release [type]
            Orchestrate a courseware release. Not yet implemented. Defaults to `point`.

            Puppetlabs trainers are expected to deliver the most current point release
            while training partners also have the option for delivering the most current
            quarterly reviewed release.

            Release types:
                quarterly: This is a major reviewed release. We make approximately four
                           of these releases a year, once each quarter. All courses in
                           the repository are released simultaneously. This release is
                           required to have at least two non-author reviewers.

                    point: Release early and release often. Any time significant changes
                           are ready to go, make a release. This will increment the minor
                           revision number.

        * review
            Initiate and manage the quarterly review process. Not yet implemented.

        * help
            You're looking at it.
    EOF
  end
end

